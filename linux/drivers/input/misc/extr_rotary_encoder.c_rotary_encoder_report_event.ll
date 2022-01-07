; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_rotary_encoder.c_rotary_encoder_report_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_rotary_encoder.c_rotary_encoder_report_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rotary_encoder = type { i64, i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rotary_encoder*)* @rotary_encoder_report_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotary_encoder_report_event(%struct.rotary_encoder* %0) #0 {
  %2 = alloca %struct.rotary_encoder*, align 8
  %3 = alloca i32, align 4
  store %struct.rotary_encoder* %0, %struct.rotary_encoder** %2, align 8
  %4 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %5 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %10 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %13 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %16 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @input_report_rel(i32 %11, i32 %14, i64 %17)
  br label %85

19:                                               ; preds = %1
  %20 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %21 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %3, align 4
  %23 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %24 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %19
  %28 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %29 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %34 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %38
  br label %60

45:                                               ; preds = %19
  %46 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %47 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %53 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %45
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59, %44
  %61 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %62 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %67 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %3, align 4
  %70 = urem i32 %69, %68
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %74 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %76 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %79 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %82 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @input_report_abs(i32 %77, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %71, %8
  %86 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %87 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @input_sync(i32 %88)
  ret void
}

declare dso_local i32 @input_report_rel(i32, i32, i64) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
