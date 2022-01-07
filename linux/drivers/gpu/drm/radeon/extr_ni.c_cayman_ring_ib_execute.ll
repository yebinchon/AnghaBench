; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_ring_ib_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_ring_ib_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32, i32 }
%struct.radeon_ib = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PACKET3_FULL_CACHE_ENA = common dso_local global i32 0, align 4
@PACKET3_TC_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_SH_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_MODE_CONTROL = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER = common dso_local global i32 0, align 4
@PACKET3_SURFACE_SYNC = common dso_local global i32 0, align 4
@PACKET3_ENGINE_ME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_ring_ib_execute(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load %struct.radeon_ring*, %struct.radeon_ring** %10, align 8
  %12 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %11, i64 %14
  store %struct.radeon_ring* %15, %struct.radeon_ring** %5, align 8
  %16 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %27 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %33

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %20
  %34 = phi i32 [ %31, %20 ], [ 0, %32 ]
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @PACKET3_FULL_CACHE_ENA, align 4
  %36 = load i32, i32* @PACKET3_TC_ACTION_ENA, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PACKET3_SH_ACTION_ENA, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %41 = load i32, i32* @PACKET3_MODE_CONTROL, align 4
  %42 = call i32 @PACKET3(i32 %41, i32 0)
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %40, i32 %42)
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %45 = call i32 @radeon_ring_write(%struct.radeon_ring* %44, i32 1)
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %47 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %33
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %52 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, 3
  %55 = add i32 %54, 4
  %56 = add i32 %55, 8
  store i32 %56, i32* %8, align 4
  %57 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %58 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %59 = call i32 @PACKET3(i32 %58, i32 1)
  %60 = call i32 @radeon_ring_write(%struct.radeon_ring* %57, i32 %59)
  %61 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %63 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %66 = sub nsw i32 %64, %65
  %67 = ashr i32 %66, 2
  %68 = call i32 @radeon_ring_write(%struct.radeon_ring* %61, i32 %67)
  %69 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @radeon_ring_write(%struct.radeon_ring* %69, i32 %70)
  br label %72

72:                                               ; preds = %50, %33
  %73 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %74 = load i32, i32* @PACKET3_INDIRECT_BUFFER, align 4
  %75 = call i32 @PACKET3(i32 %74, i32 2)
  %76 = call i32 @radeon_ring_write(%struct.radeon_ring* %73, i32 %75)
  %77 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %78 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %79 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, -4
  %82 = call i32 @radeon_ring_write(%struct.radeon_ring* %77, i32 %81)
  %83 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %84 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %85 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @upper_32_bits(i32 %86)
  %88 = and i32 %87, 255
  %89 = call i32 @radeon_ring_write(%struct.radeon_ring* %83, i32 %88)
  %90 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %91 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %92 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %6, align 4
  %95 = shl i32 %94, 24
  %96 = or i32 %93, %95
  %97 = call i32 @radeon_ring_write(%struct.radeon_ring* %90, i32 %96)
  %98 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %99 = load i32, i32* @PACKET3_SURFACE_SYNC, align 4
  %100 = call i32 @PACKET3(i32 %99, i32 3)
  %101 = call i32 @radeon_ring_write(%struct.radeon_ring* %98, i32 %100)
  %102 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %103 = load i32, i32* @PACKET3_ENGINE_ME, align 4
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @radeon_ring_write(%struct.radeon_ring* %102, i32 %105)
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %108 = call i32 @radeon_ring_write(%struct.radeon_ring* %107, i32 -1)
  %109 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %110 = call i32 @radeon_ring_write(%struct.radeon_ring* %109, i32 0)
  %111 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = shl i32 %112, 24
  %114 = or i32 %113, 10
  %115 = call i32 @radeon_ring_write(%struct.radeon_ring* %111, i32 %114)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
