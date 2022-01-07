; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.hgpk_data* }
%struct.hgpk_data = type { i32, i32, i32, %struct.psmouse* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hgpk_default_mode = common dso_local global i32 0, align 4
@hgpk_recalib_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hgpk_init(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.hgpk_data*, align 8
  %5 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.hgpk_data* @kzalloc(i32 24, i32 %6)
  store %struct.hgpk_data* %7, %struct.hgpk_data** %4, align 8
  %8 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %9 = icmp ne %struct.hgpk_data* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  br label %44

13:                                               ; preds = %1
  %14 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %15 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 0
  store %struct.hgpk_data* %14, %struct.hgpk_data** %16, align 8
  %17 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %18 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %19 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %18, i32 0, i32 3
  store %struct.psmouse* %17, %struct.psmouse** %19, align 8
  %20 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %21 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* @hgpk_default_mode, align 4
  %23 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %24 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %26 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %25, i32 0, i32 1
  %27 = load i32, i32* @hgpk_recalib_work, align 4
  %28 = call i32 @INIT_DELAYED_WORK(i32* %26, i32 %27)
  %29 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %30 = call i32 @hgpk_reset_device(%struct.psmouse* %29, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %13
  br label %41

34:                                               ; preds = %13
  %35 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %36 = call i32 @hgpk_register(%struct.psmouse* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %41

40:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %46

41:                                               ; preds = %39, %33
  %42 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %43 = call i32 @kfree(%struct.hgpk_data* %42)
  br label %44

44:                                               ; preds = %41, %10
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.hgpk_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @hgpk_reset_device(%struct.psmouse*, i32) #1

declare dso_local i32 @hgpk_register(%struct.psmouse*) #1

declare dso_local i32 @kfree(%struct.hgpk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
