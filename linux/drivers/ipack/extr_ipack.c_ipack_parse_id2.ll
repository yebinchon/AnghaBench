; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_parse_id2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_parse_id2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipack_device = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [43 x i8] c"ID CRC invalid found 0x%x, expected 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipack_device*)* @ipack_parse_id2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipack_parse_id2(%struct.ipack_device* %0) #0 {
  %2 = alloca %struct.ipack_device*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipack_device* %0, %struct.ipack_device** %2, align 8
  %6 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %7 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @be16_to_cpu(i32 %12)
  %14 = and i32 %13, 255
  %15 = shl i32 %14, 16
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be16_to_cpu(i32 %18)
  %20 = add nsw i32 %15, %19
  %21 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %22 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be16_to_cpu(i32 %25)
  %27 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %28 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 10
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be16_to_cpu(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %40 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %48 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %50 = call i32 @ipack_calc_crc2(%struct.ipack_device* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 12
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be16_to_cpu(i32 %54)
  %56 = icmp eq i32 %51, %55
  %57 = zext i1 %56 to i32
  %58 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %59 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %61 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %1
  %65 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %66 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %65, i32 0, i32 5
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 11
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @dev_warn(i32* %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %64, %1
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ipack_calc_crc2(%struct.ipack_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
