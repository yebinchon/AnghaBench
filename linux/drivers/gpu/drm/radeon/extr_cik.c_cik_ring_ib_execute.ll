; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_ring_ib_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_ring_ib_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__, %struct.radeon_ring* }
%struct.TYPE_6__ = type { i64 }
%struct.radeon_ring = type { i32, i32, i32 }
%struct.radeon_ib = type { i64, i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@INDIRECT_BUFFER_VALID = common dso_local global i32 0, align 4
@PACKET3_SWITCH_BUFFER = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER_CONST = common dso_local global i32 0, align 4
@PACKET3_SET_UCONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_UCONFIG_REG_START = common dso_local global i32 0, align 4
@PACKET3_WRITE_DATA = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_ring_ib_execute(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 1
  %12 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %13 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %14 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %12, i64 %15
  store %struct.radeon_ring* %16, %struct.radeon_ring** %5, align 8
  %17 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %17, i32 0, i32 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %22, i32 0, i32 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %21
  %35 = phi i32 [ %32, %21 ], [ 0, %33 ]
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @INDIRECT_BUFFER_VALID, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %38 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %43 = load i32, i32* @PACKET3_SWITCH_BUFFER, align 4
  %44 = call i32 @PACKET3(i32 %43, i32 0)
  %45 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 %44)
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %47 = call i32 @radeon_ring_write(%struct.radeon_ring* %46, i32 0)
  %48 = load i32, i32* @PACKET3_INDIRECT_BUFFER_CONST, align 4
  %49 = call i32 @PACKET3(i32 %48, i32 2)
  store i32 %49, i32* %7, align 4
  br label %114

50:                                               ; preds = %34
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %52 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %50
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %57 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 3
  %60 = add nsw i32 %59, 4
  store i32 %60, i32* %9, align 4
  %61 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %62 = load i32, i32* @PACKET3_SET_UCONFIG_REG, align 4
  %63 = call i32 @PACKET3(i32 %62, i32 1)
  %64 = call i32 @radeon_ring_write(%struct.radeon_ring* %61, i32 %63)
  %65 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %66 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %67 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PACKET3_SET_UCONFIG_REG_START, align 4
  %70 = sub nsw i32 %68, %69
  %71 = ashr i32 %70, 2
  %72 = call i32 @radeon_ring_write(%struct.radeon_ring* %65, i32 %71)
  %73 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @radeon_ring_write(%struct.radeon_ring* %73, i32 %74)
  br label %111

76:                                               ; preds = %50
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %76
  %83 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %84 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 5
  %87 = add nsw i32 %86, 4
  store i32 %87, i32* %9, align 4
  %88 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %89 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %90 = call i32 @PACKET3(i32 %89, i32 3)
  %91 = call i32 @radeon_ring_write(%struct.radeon_ring* %88, i32 %90)
  %92 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %93 = call i32 @WRITE_DATA_DST_SEL(i32 1)
  %94 = call i32 @radeon_ring_write(%struct.radeon_ring* %92, i32 %93)
  %95 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %96 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %97 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, -4
  %100 = call i32 @radeon_ring_write(%struct.radeon_ring* %95, i32 %99)
  %101 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %102 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %103 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @upper_32_bits(i32 %104)
  %106 = call i32 @radeon_ring_write(%struct.radeon_ring* %101, i32 %105)
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @radeon_ring_write(%struct.radeon_ring* %107, i32 %108)
  br label %110

110:                                              ; preds = %82, %76
  br label %111

111:                                              ; preds = %110, %55
  %112 = load i32, i32* @PACKET3_INDIRECT_BUFFER, align 4
  %113 = call i32 @PACKET3(i32 %112, i32 2)
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %111, %41
  %115 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %116 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = shl i32 %118, 24
  %120 = or i32 %117, %119
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @radeon_ring_write(%struct.radeon_ring* %123, i32 %124)
  %126 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %127 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %128 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, -4
  %131 = call i32 @radeon_ring_write(%struct.radeon_ring* %126, i32 %130)
  %132 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %133 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %134 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @upper_32_bits(i32 %135)
  %137 = and i32 %136, 65535
  %138 = call i32 @radeon_ring_write(%struct.radeon_ring* %132, i32 %137)
  %139 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @radeon_ring_write(%struct.radeon_ring* %139, i32 %140)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WRITE_DATA_DST_SEL(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
