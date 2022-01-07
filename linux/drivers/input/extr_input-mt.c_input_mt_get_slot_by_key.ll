; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_input_mt_get_slot_by_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_input_mt_get_slot_by_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.input_mt* }
%struct.input_mt = type { i32, %struct.input_mt_slot* }
%struct.input_mt_slot = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_mt_get_slot_by_key(%struct.input_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_mt*, align 8
  %7 = alloca %struct.input_mt_slot*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %9 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %8, i32 0, i32 0
  %10 = load %struct.input_mt*, %struct.input_mt** %9, align 8
  store %struct.input_mt* %10, %struct.input_mt** %6, align 8
  %11 = load %struct.input_mt*, %struct.input_mt** %6, align 8
  %12 = icmp ne %struct.input_mt* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %95

14:                                               ; preds = %2
  %15 = load %struct.input_mt*, %struct.input_mt** %6, align 8
  %16 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %15, i32 0, i32 1
  %17 = load %struct.input_mt_slot*, %struct.input_mt_slot** %16, align 8
  store %struct.input_mt_slot* %17, %struct.input_mt_slot** %7, align 8
  br label %18

18:                                               ; preds = %50, %14
  %19 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %20 = load %struct.input_mt*, %struct.input_mt** %6, align 8
  %21 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %20, i32 0, i32 1
  %22 = load %struct.input_mt_slot*, %struct.input_mt_slot** %21, align 8
  %23 = load %struct.input_mt*, %struct.input_mt** %6, align 8
  %24 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %22, i64 %26
  %28 = icmp ne %struct.input_mt_slot* %19, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %18
  %30 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %31 = call i64 @input_mt_is_active(%struct.input_mt_slot* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %35 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %41 = load %struct.input_mt*, %struct.input_mt** %6, align 8
  %42 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %41, i32 0, i32 1
  %43 = load %struct.input_mt_slot*, %struct.input_mt_slot** %42, align 8
  %44 = ptrtoint %struct.input_mt_slot* %40 to i64
  %45 = ptrtoint %struct.input_mt_slot* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %95

49:                                               ; preds = %33, %29
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %52 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %51, i32 1
  store %struct.input_mt_slot* %52, %struct.input_mt_slot** %7, align 8
  br label %18

53:                                               ; preds = %18
  %54 = load %struct.input_mt*, %struct.input_mt** %6, align 8
  %55 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %54, i32 0, i32 1
  %56 = load %struct.input_mt_slot*, %struct.input_mt_slot** %55, align 8
  store %struct.input_mt_slot* %56, %struct.input_mt_slot** %7, align 8
  br label %57

57:                                               ; preds = %91, %53
  %58 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %59 = load %struct.input_mt*, %struct.input_mt** %6, align 8
  %60 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %59, i32 0, i32 1
  %61 = load %struct.input_mt_slot*, %struct.input_mt_slot** %60, align 8
  %62 = load %struct.input_mt*, %struct.input_mt** %6, align 8
  %63 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %61, i64 %65
  %67 = icmp ne %struct.input_mt_slot* %58, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %57
  %69 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %70 = call i64 @input_mt_is_active(%struct.input_mt_slot* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %90, label %72

72:                                               ; preds = %68
  %73 = load %struct.input_mt*, %struct.input_mt** %6, align 8
  %74 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %75 = call i32 @input_mt_is_used(%struct.input_mt* %73, %struct.input_mt_slot* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %80 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %82 = load %struct.input_mt*, %struct.input_mt** %6, align 8
  %83 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %82, i32 0, i32 1
  %84 = load %struct.input_mt_slot*, %struct.input_mt_slot** %83, align 8
  %85 = ptrtoint %struct.input_mt_slot* %81 to i64
  %86 = ptrtoint %struct.input_mt_slot* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %3, align 4
  br label %95

90:                                               ; preds = %72, %68
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %93 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %92, i32 1
  store %struct.input_mt_slot* %93, %struct.input_mt_slot** %7, align 8
  br label %57

94:                                               ; preds = %57
  store i32 -1, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %77, %39, %13
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @input_mt_is_active(%struct.input_mt_slot*) #1

declare dso_local i32 @input_mt_is_used(%struct.input_mt*, %struct.input_mt_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
