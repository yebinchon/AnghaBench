; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_input_mt_assign_slots.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_input_mt_assign_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.input_mt* }
%struct.input_mt = type { i32, i32 }
%struct.input_mt_pos = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_mt_assign_slots(%struct.input_dev* %0, i32* %1, %struct.input_mt_pos* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.input_mt_pos*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.input_mt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.input_mt_pos* %2, %struct.input_mt_pos** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 0
  %17 = load %struct.input_mt*, %struct.input_mt** %16, align 8
  store %struct.input_mt* %17, %struct.input_mt** %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = mul nsw i32 2, %18
  %20 = load i32, i32* %11, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.input_mt*, %struct.input_mt** %12, align 8
  %23 = icmp ne %struct.input_mt* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load %struct.input_mt*, %struct.input_mt** %12, align 8
  %26 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %5
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %65

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.input_mt*, %struct.input_mt** %12, align 8
  %35 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %65

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %65

45:                                               ; preds = %41
  %46 = load %struct.input_mt*, %struct.input_mt** %12, align 8
  %47 = load %struct.input_mt_pos*, %struct.input_mt_pos** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @input_mt_set_matrix(%struct.input_mt* %46, %struct.input_mt_pos* %47, i32 %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.input_mt*, %struct.input_mt** %12, align 8
  %52 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sdiv i32 %55, %56
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @find_reduced_matrix(i32 %53, i32 %54, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.input_mt*, %struct.input_mt** %12, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @input_mt_set_slots(%struct.input_mt* %61, i32* %62, i32 %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %45, %44, %38, %29
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @input_mt_set_matrix(%struct.input_mt*, %struct.input_mt_pos*, i32, i32) #1

declare dso_local i32 @find_reduced_matrix(i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_set_slots(%struct.input_mt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
