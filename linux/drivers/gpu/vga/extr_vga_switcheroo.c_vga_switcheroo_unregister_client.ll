; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_unregister_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_unregister_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.vga_switcheroo_client = type { i32 }

@vgasr_mutex = common dso_local global i32 0, align 4
@vgasr_priv = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vga_switcheroo_unregister_client(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.vga_switcheroo_client*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = call i32 @mutex_lock(i32* @vgasr_mutex)
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.vga_switcheroo_client* @find_client_from_pci(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vgasr_priv, i32 0, i32 2), %struct.pci_dev* %5)
  store %struct.vga_switcheroo_client* %6, %struct.vga_switcheroo_client** %3, align 8
  %7 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %8 = icmp ne %struct.vga_switcheroo_client* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %11 = call i64 @client_is_vga(%struct.vga_switcheroo_client* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vgasr_priv, i32 0, i32 0), align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vgasr_priv, i32 0, i32 0), align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %18 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %17, i32 0, i32 0
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %3, align 8
  %21 = call i32 @kfree(%struct.vga_switcheroo_client* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vgasr_priv, i32 0, i32 1), align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vgasr_priv, i32 0, i32 0), align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @vga_switcheroo_debugfs_fini(%struct.TYPE_3__* @vgasr_priv)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vgasr_priv, i32 0, i32 1), align 4
  br label %31

31:                                               ; preds = %28, %25, %22
  %32 = call i32 @mutex_unlock(i32* @vgasr_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vga_switcheroo_client* @find_client_from_pci(i32*, %struct.pci_dev*) #1

declare dso_local i64 @client_is_vga(%struct.vga_switcheroo_client*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.vga_switcheroo_client*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @vga_switcheroo_debugfs_fini(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
