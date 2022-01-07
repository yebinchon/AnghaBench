; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_fence_ring_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_fence_ring_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.radeon_ring* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i64, i32 }

@PACKET3_TC_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_VC_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_SH_ACTION_ENA = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i64 0, align 8
@PACKET3_FULL_CACHE_ENA = common dso_local global i32 0, align 4
@PACKET3_SURFACE_SYNC = common dso_local global i32 0, align 4
@PACKET3_EVENT_WRITE_EOP = common dso_local global i32 0, align 4
@CACHE_FLUSH_AND_INV_EVENT_TS = common dso_local global i32 0, align 4
@PACKET3_EVENT_WRITE = common dso_local global i32 0, align 4
@CACHE_FLUSH_AND_INV_EVENT = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@WAIT_UNTIL = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_OFFSET = common dso_local global i32 0, align 4
@WAIT_3D_IDLE_bit = common dso_local global i32 0, align 4
@WAIT_3D_IDLECLEAN_bit = common dso_local global i32 0, align 4
@CP_INT_STATUS = common dso_local global i32 0, align 4
@RB_INT_STAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_fence_ring_emit(%struct.radeon_device* %0, %struct.radeon_fence* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_fence*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_fence* %1, %struct.radeon_fence** %4, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 3
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %11 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i64 %13
  store %struct.radeon_ring* %14, %struct.radeon_ring** %5, align 8
  %15 = load i32, i32* @PACKET3_TC_ACTION_ENA, align 4
  %16 = load i32, i32* @PACKET3_VC_ACTION_ENA, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PACKET3_SH_ACTION_ENA, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CHIP_RV770, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @PACKET3_FULL_CACHE_ENA, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %88

35:                                               ; preds = %29
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %40 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %46 = load i32, i32* @PACKET3_SURFACE_SYNC, align 4
  %47 = call i32 @PACKET3(i32 %46, i32 3)
  %48 = call i32 @radeon_ring_write(%struct.radeon_ring* %45, i32 %47)
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @radeon_ring_write(%struct.radeon_ring* %49, i32 %50)
  %52 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %53 = call i32 @radeon_ring_write(%struct.radeon_ring* %52, i32 -1)
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %55 = call i32 @radeon_ring_write(%struct.radeon_ring* %54, i32 0)
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %57 = call i32 @radeon_ring_write(%struct.radeon_ring* %56, i32 10)
  %58 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %59 = load i32, i32* @PACKET3_EVENT_WRITE_EOP, align 4
  %60 = call i32 @PACKET3(i32 %59, i32 4)
  %61 = call i32 @radeon_ring_write(%struct.radeon_ring* %58, i32 %60)
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %63 = load i32, i32* @CACHE_FLUSH_AND_INV_EVENT_TS, align 4
  %64 = call i32 @EVENT_TYPE(i32 %63)
  %65 = call i32 @EVENT_INDEX(i32 5)
  %66 = or i32 %64, %65
  %67 = call i32 @radeon_ring_write(%struct.radeon_ring* %62, i32 %66)
  %68 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @lower_32_bits(i32 %69)
  %71 = call i32 @radeon_ring_write(%struct.radeon_ring* %68, i32 %70)
  %72 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @upper_32_bits(i32 %73)
  %75 = and i32 %74, 255
  %76 = call i32 @DATA_SEL(i32 1)
  %77 = or i32 %75, %76
  %78 = call i32 @INT_SEL(i32 2)
  %79 = or i32 %77, %78
  %80 = call i32 @radeon_ring_write(%struct.radeon_ring* %72, i32 %79)
  %81 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %82 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %83 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @radeon_ring_write(%struct.radeon_ring* %81, i32 %84)
  %86 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %87 = call i32 @radeon_ring_write(%struct.radeon_ring* %86, i32 0)
  br label %157

88:                                               ; preds = %29
  %89 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %90 = load i32, i32* @PACKET3_SURFACE_SYNC, align 4
  %91 = call i32 @PACKET3(i32 %90, i32 3)
  %92 = call i32 @radeon_ring_write(%struct.radeon_ring* %89, i32 %91)
  %93 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @radeon_ring_write(%struct.radeon_ring* %93, i32 %94)
  %96 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %97 = call i32 @radeon_ring_write(%struct.radeon_ring* %96, i32 -1)
  %98 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %99 = call i32 @radeon_ring_write(%struct.radeon_ring* %98, i32 0)
  %100 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %101 = call i32 @radeon_ring_write(%struct.radeon_ring* %100, i32 10)
  %102 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %103 = load i32, i32* @PACKET3_EVENT_WRITE, align 4
  %104 = call i32 @PACKET3(i32 %103, i32 0)
  %105 = call i32 @radeon_ring_write(%struct.radeon_ring* %102, i32 %104)
  %106 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %107 = load i32, i32* @CACHE_FLUSH_AND_INV_EVENT, align 4
  %108 = call i32 @EVENT_TYPE(i32 %107)
  %109 = call i32 @EVENT_INDEX(i32 0)
  %110 = or i32 %108, %109
  %111 = call i32 @radeon_ring_write(%struct.radeon_ring* %106, i32 %110)
  %112 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %113 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %114 = call i32 @PACKET3(i32 %113, i32 1)
  %115 = call i32 @radeon_ring_write(%struct.radeon_ring* %112, i32 %114)
  %116 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %117 = load i32, i32* @WAIT_UNTIL, align 4
  %118 = load i32, i32* @PACKET3_SET_CONFIG_REG_OFFSET, align 4
  %119 = sub nsw i32 %117, %118
  %120 = ashr i32 %119, 2
  %121 = call i32 @radeon_ring_write(%struct.radeon_ring* %116, i32 %120)
  %122 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %123 = load i32, i32* @WAIT_3D_IDLE_bit, align 4
  %124 = load i32, i32* @WAIT_3D_IDLECLEAN_bit, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @radeon_ring_write(%struct.radeon_ring* %122, i32 %125)
  %127 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %128 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %129 = call i32 @PACKET3(i32 %128, i32 1)
  %130 = call i32 @radeon_ring_write(%struct.radeon_ring* %127, i32 %129)
  %131 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %136 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @PACKET3_SET_CONFIG_REG_OFFSET, align 4
  %142 = sub nsw i32 %140, %141
  %143 = ashr i32 %142, 2
  %144 = call i32 @radeon_ring_write(%struct.radeon_ring* %131, i32 %143)
  %145 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %146 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %147 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @radeon_ring_write(%struct.radeon_ring* %145, i32 %148)
  %150 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %151 = load i32, i32* @CP_INT_STATUS, align 4
  %152 = call i32 @PACKET0(i32 %151, i32 0)
  %153 = call i32 @radeon_ring_write(%struct.radeon_ring* %150, i32 %152)
  %154 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %155 = load i32, i32* @RB_INT_STAT, align 4
  %156 = call i32 @radeon_ring_write(%struct.radeon_ring* %154, i32 %155)
  br label %157

157:                                              ; preds = %88, %35
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @EVENT_TYPE(i32) #1

declare dso_local i32 @EVENT_INDEX(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @DATA_SEL(i32) #1

declare dso_local i32 @INT_SEL(i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
