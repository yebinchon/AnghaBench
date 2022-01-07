; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor_v2.c_mv_xor_v2_set_data_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor_v2.c_mv_xor_v2_set_data_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_v2_device = type { i32 }
%struct.mv_xor_v2_descriptor = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_xor_v2_device*, %struct.mv_xor_v2_descriptor*, i32, i32)* @mv_xor_v2_set_data_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_xor_v2_set_data_buffers(%struct.mv_xor_v2_device* %0, %struct.mv_xor_v2_descriptor* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mv_xor_v2_device*, align 8
  %6 = alloca %struct.mv_xor_v2_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv_xor_v2_device* %0, %struct.mv_xor_v2_device** %5, align 8
  store %struct.mv_xor_v2_descriptor* %1, %struct.mv_xor_v2_descriptor** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = ashr i32 %10, 1
  %12 = mul nsw i32 %11, 3
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @lower_32_bits(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.mv_xor_v2_descriptor*, %struct.mv_xor_v2_descriptor** %6, align 8
  %21 = getelementptr inbounds %struct.mv_xor_v2_descriptor, %struct.mv_xor_v2_descriptor* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %19, i32* %25, align 4
  %26 = load %struct.mv_xor_v2_descriptor*, %struct.mv_xor_v2_descriptor** %6, align 8
  %27 = getelementptr inbounds %struct.mv_xor_v2_descriptor, %struct.mv_xor_v2_descriptor* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, -65536
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @upper_32_bits(i32 %35)
  %37 = and i32 %36, 65535
  %38 = load %struct.mv_xor_v2_descriptor*, %struct.mv_xor_v2_descriptor** %6, align 8
  %39 = getelementptr inbounds %struct.mv_xor_v2_descriptor, %struct.mv_xor_v2_descriptor* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %37
  store i32 %46, i32* %44, align 4
  br label %80

47:                                               ; preds = %4
  %48 = load i32, i32* %7, align 4
  %49 = call i8* @lower_32_bits(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.mv_xor_v2_descriptor*, %struct.mv_xor_v2_descriptor** %6, align 8
  %52 = getelementptr inbounds %struct.mv_xor_v2_descriptor, %struct.mv_xor_v2_descriptor* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %50, i32* %57, align 4
  %58 = load %struct.mv_xor_v2_descriptor*, %struct.mv_xor_v2_descriptor** %6, align 8
  %59 = getelementptr inbounds %struct.mv_xor_v2_descriptor, %struct.mv_xor_v2_descriptor* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 65535
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @upper_32_bits(i32 %67)
  %69 = and i32 %68, 65535
  %70 = shl i32 %69, 16
  %71 = load %struct.mv_xor_v2_descriptor*, %struct.mv_xor_v2_descriptor** %6, align 8
  %72 = getelementptr inbounds %struct.mv_xor_v2_descriptor, %struct.mv_xor_v2_descriptor* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %70
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %47, %16
  ret void
}

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
