; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_set_fck_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_set_fck_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"set fck to %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"clk rate mismatch: %lu != %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_set_fck_rate(%struct.dss_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dss_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @DSSDBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %10 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @clk_set_rate(i32 %11, i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %20 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @clk_get_rate(i32 %21)
  %23 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %24 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %26 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.dss_device*, %struct.dss_device** %4, align 8
  %32 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @WARN_ONCE(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %33, i64 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %18, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @DSSDBG(i8*, i64) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
