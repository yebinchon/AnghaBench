; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_adi.c_adi_init_center.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_adi.c_adi_init_center.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adi = type { i32, i32, i32, i32, i32*, i64, i32, i32 }

@ABS_THROTTLE = common dso_local global i32 0, align 4
@ABS_RUDDER = common dso_local global i32 0, align 4
@ADI_ID_WGPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adi*)* @adi_init_center to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adi_init_center(%struct.adi* %0) #0 {
  %2 = alloca %struct.adi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adi* %0, %struct.adi** %2, align 8
  %6 = load %struct.adi*, %struct.adi** %2, align 8
  %7 = getelementptr inbounds %struct.adi, %struct.adi* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %112

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %109, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.adi*, %struct.adi** %2, align 8
  %15 = getelementptr inbounds %struct.adi, %struct.adi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.adi*, %struct.adi** %2, align 8
  %18 = getelementptr inbounds %struct.adi, %struct.adi* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = load %struct.adi*, %struct.adi** %2, align 8
  %22 = getelementptr inbounds %struct.adi, %struct.adi* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.adi*, %struct.adi** %2, align 8
  %25 = getelementptr inbounds %struct.adi, %struct.adi* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, -1
  %28 = zext i1 %27 to i32
  %29 = add nsw i32 %23, %28
  %30 = mul nsw i32 %29, 2
  %31 = add nsw i32 %20, %30
  %32 = icmp slt i32 %13, %31
  br i1 %32, label %33, label %112

33:                                               ; preds = %12
  %34 = load %struct.adi*, %struct.adi** %2, align 8
  %35 = getelementptr inbounds %struct.adi, %struct.adi* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  %41 = load %struct.adi*, %struct.adi** %2, align 8
  %42 = getelementptr inbounds %struct.adi, %struct.adi* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @input_abs_get_val(i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @ABS_THROTTLE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @ABS_RUDDER, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load %struct.adi*, %struct.adi** %2, align 8
  %55 = getelementptr inbounds %struct.adi, %struct.adi* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ADI_ID_WGPE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53, %49, %33
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.adi*, %struct.adi** %2, align 8
  %62 = getelementptr inbounds %struct.adi, %struct.adi* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 512, i32 128
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %59, %53
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.adi*, %struct.adi** %2, align 8
  %70 = getelementptr inbounds %struct.adi, %struct.adi* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load %struct.adi*, %struct.adi** %2, align 8
  %75 = getelementptr inbounds %struct.adi, %struct.adi* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = mul nsw i32 %78, 2
  %80 = sub nsw i32 %79, 64
  %81 = call i32 @input_set_abs_params(i32 %76, i32 %77, i32 64, i32 %80, i32 2, i32 16)
  br label %108

82:                                               ; preds = %67
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.adi*, %struct.adi** %2, align 8
  %85 = getelementptr inbounds %struct.adi, %struct.adi* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.adi*, %struct.adi** %2, align 8
  %88 = getelementptr inbounds %struct.adi, %struct.adi* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %86, %89
  %91 = icmp slt i32 %83, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %82
  %93 = load %struct.adi*, %struct.adi** %2, align 8
  %94 = getelementptr inbounds %struct.adi, %struct.adi* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %5, align 4
  %98 = mul nsw i32 %97, 2
  %99 = sub nsw i32 %98, 48
  %100 = call i32 @input_set_abs_params(i32 %95, i32 %96, i32 48, i32 %99, i32 1, i32 16)
  br label %107

101:                                              ; preds = %82
  %102 = load %struct.adi*, %struct.adi** %2, align 8
  %103 = getelementptr inbounds %struct.adi, %struct.adi* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @input_set_abs_params(i32 %104, i32 %105, i32 -1, i32 1, i32 0, i32 0)
  br label %107

107:                                              ; preds = %101, %92
  br label %108

108:                                              ; preds = %107, %73
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %12

112:                                              ; preds = %10, %12
  ret void
}

declare dso_local i32 @input_abs_get_val(i32, i32) #1

declare dso_local i32 @input_set_abs_params(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
