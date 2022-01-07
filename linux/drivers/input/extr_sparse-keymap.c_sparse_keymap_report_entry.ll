; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_report_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_sparse-keymap.c_sparse_keymap_report_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.key_entry = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparse_keymap_report_entry(%struct.input_dev* %0, %struct.key_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.key_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.key_entry* %1, %struct.key_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %10 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %57 [
    i32 130, label %12
    i32 129, label %42
    i32 128, label %47
  ]

12:                                               ; preds = %4
  %13 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %14 = load i32, i32* @EV_MSC, align 4
  %15 = load i32, i32* @MSC_SCAN, align 4
  %16 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %17 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @input_event(%struct.input_dev* %13, i32 %14, i32 %15, i32 %18)
  %20 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %21 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %22 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @input_report_key(%struct.input_dev* %20, i32 %23, i32 %24)
  %26 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %27 = call i32 @input_sync(%struct.input_dev* %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %12
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %35 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %36 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @input_report_key(%struct.input_dev* %34, i32 %37, i32 0)
  %39 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %40 = call i32 @input_sync(%struct.input_dev* %39)
  br label %41

41:                                               ; preds = %33, %30, %12
  br label %57

42:                                               ; preds = %4
  %43 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %44 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %4, %42
  %48 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %49 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %50 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @input_report_switch(%struct.input_dev* %48, i32 %52, i32 %53)
  %55 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %56 = call i32 @input_sync(%struct.input_dev* %55)
  br label %57

57:                                               ; preds = %4, %47, %41
  ret void
}

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @input_report_switch(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
