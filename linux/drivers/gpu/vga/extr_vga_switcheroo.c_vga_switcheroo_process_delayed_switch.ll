; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_process_delayed_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_process_delayed_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.vga_switcheroo_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@vgasr_mutex = common dso_local global i32 0, align 4
@vgasr_priv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"processing delayed switch to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"delayed switching failed stage 2 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vga_switcheroo_process_delayed_switch() #0 {
  %1 = alloca %struct.vga_switcheroo_client*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @EINVAL, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = call i32 @mutex_lock(i32* @vgasr_mutex)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgasr_priv, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %30

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgasr_priv, i32 0, i32 1), align 4
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgasr_priv, i32 0, i32 1), align 4
  %14 = call %struct.vga_switcheroo_client* @find_client_from_id(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgasr_priv, i32 0, i32 2), i32 %13)
  store %struct.vga_switcheroo_client* %14, %struct.vga_switcheroo_client** %1, align 8
  %15 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %1, align 8
  %16 = icmp ne %struct.vga_switcheroo_client* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = call i32 (...) @check_can_switch()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %10
  br label %30

21:                                               ; preds = %17
  %22 = load %struct.vga_switcheroo_client*, %struct.vga_switcheroo_client** %1, align 8
  %23 = call i32 @vga_switchto_stage2(%struct.vga_switcheroo_client* %22)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %21
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgasr_priv, i32 0, i32 0), align 4
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %20, %9
  %31 = call i32 @mutex_unlock(i32* @vgasr_mutex)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.vga_switcheroo_client* @find_client_from_id(i32*, i32) #1

declare dso_local i32 @check_can_switch(...) #1

declare dso_local i32 @vga_switchto_stage2(%struct.vga_switcheroo_client*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
