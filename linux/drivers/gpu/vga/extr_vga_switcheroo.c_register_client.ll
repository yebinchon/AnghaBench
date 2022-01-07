; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_register_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_register_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.vga_switcheroo_client_ops = type { i32 }
%struct.pci_dev = type { i32 }
%struct.vga_switcheroo_client = type { i32, i32, i32, i32, %struct.pci_dev*, %struct.vga_switcheroo_client_ops*, %struct.pci_dev*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VGA_SWITCHEROO_ON = common dso_local global i32 0, align 4
@vgasr_mutex = common dso_local global i32 0, align 4
@vgasr_priv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.vga_switcheroo_client_ops*, i32, %struct.pci_dev*, i32, i32)* @register_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_client(%struct.pci_dev* %0, %struct.vga_switcheroo_client_ops* %1, i32 %2, %struct.pci_dev* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.vga_switcheroo_client_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vga_switcheroo_client*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %8, align 8
  store %struct.vga_switcheroo_client_ops* %1, %struct.vga_switcheroo_client_ops** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.pci_dev* %3, %struct.pci_dev** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.vga_switcheroo_client* @kzalloc(i32 48, i32 %15)
  store %struct.vga_switcheroo_client* %16, %struct.vga_switcheroo_client** %14, align 8
  %17 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %14, align 8
  %18 = icmp ne %struct.vga_switcheroo_client* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %62

22:                                               ; preds = %6
  %23 = load i32, i32* @VGA_SWITCHEROO_ON, align 4
  %24 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %14, align 8
  %25 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %27 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %14, align 8
  %28 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %27, i32 0, i32 6
  store %struct.pci_dev* %26, %struct.pci_dev** %28, align 8
  %29 = load %struct.vga_switcheroo_client_ops*, %struct.vga_switcheroo_client_ops** %9, align 8
  %30 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %14, align 8
  %31 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %30, i32 0, i32 5
  store %struct.vga_switcheroo_client_ops* %29, %struct.vga_switcheroo_client_ops** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %14, align 8
  %34 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %14, align 8
  %37 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %14, align 8
  %40 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %42 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %14, align 8
  %43 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %42, i32 0, i32 4
  store %struct.pci_dev* %41, %struct.pci_dev** %43, align 8
  %44 = call i32 @mutex_lock(i32* @vgasr_mutex)
  %45 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %14, align 8
  %46 = getelementptr inbounds %struct.vga_switcheroo_client, %struct.vga_switcheroo_client* %45, i32 0, i32 3
  %47 = call i32 @list_add_tail(i32* %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgasr_priv, i32 0, i32 1))
  %48 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %14, align 8
  %49 = call i64 @client_is_vga(%struct.vga_switcheroo_client* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %22
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgasr_priv, i32 0, i32 0), align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgasr_priv, i32 0, i32 0), align 4
  br label %54

54:                                               ; preds = %51, %22
  %55 = call i64 (...) @vga_switcheroo_ready()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call i32 @pr_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 (...) @vga_switcheroo_enable()
  br label %60

60:                                               ; preds = %57, %54
  %61 = call i32 @mutex_unlock(i32* @vgasr_mutex)
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %19
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local %struct.vga_switcheroo_client* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @client_is_vga(%struct.vga_switcheroo_client*) #1

declare dso_local i64 @vga_switcheroo_ready(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @vga_switcheroo_enable(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
