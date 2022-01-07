; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_i2c_payloads_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_i2c_payloads_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_payloads = type { i32 }
%struct.i2c_payload = type { i32, i64, i32*, i32 }

@EDID_SEGMENT_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dal_ddc_i2c_payloads_add(%struct.i2c_payloads* %0, i64 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.i2c_payloads*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.i2c_payload, align 8
  store %struct.i2c_payloads* %0, %struct.i2c_payloads** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* @EDID_SEGMENT_SIZE, align 8
  store i64 %14, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %37, %5
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %13, i32 0, i32 0
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %13, i32 0, i32 1
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %13, i32 0, i32 2
  %25 = load i32*, i32** %9, align 8
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %24, align 8
  %28 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %13, i32 0, i32 3
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %12, align 8
  %32 = sub nsw i64 %30, %31
  %33 = call i32 @DDC_MIN(i64 %29, i64 %32)
  store i32 %33, i32* %28, align 8
  %34 = load %struct.i2c_payloads*, %struct.i2c_payloads** %6, align 8
  %35 = getelementptr inbounds %struct.i2c_payloads, %struct.i2c_payloads* %34, i32 0, i32 0
  %36 = call i32 @dal_vector_append(i32* %35, %struct.i2c_payload* %13)
  br label %37

37:                                               ; preds = %19
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %12, align 8
  br label %15

41:                                               ; preds = %15
  ret void
}

declare dso_local i32 @DDC_MIN(i64, i64) #1

declare dso_local i32 @dal_vector_append(i32*, %struct.i2c_payload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
