; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_ring_ib_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_ring_ib_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__, %struct.radeon_ring* }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_ring = type { i32, i32, i32 }
%struct.radeon_ib = type { i64, i32, i32 }

@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_OFFSET = common dso_local global i32 0, align 4
@PACKET3_MEM_WRITE = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_ring_ib_execute(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %10 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %11 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %9, i64 %12
  store %struct.radeon_ring* %13, %struct.radeon_ring** %5, align 8
  %14 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %15 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 3
  %23 = add nsw i32 %22, 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %25 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %26 = call i32 @PACKET3(i32 %25, i32 1)
  %27 = call i32 @radeon_ring_write(%struct.radeon_ring* %24, i32 %26)
  %28 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PACKET3_SET_CONFIG_REG_OFFSET, align 4
  %33 = sub nsw i32 %31, %32
  %34 = ashr i32 %33, 2
  %35 = call i32 @radeon_ring_write(%struct.radeon_ring* %28, i32 %34)
  %36 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @radeon_ring_write(%struct.radeon_ring* %36, i32 %37)
  br label %75

39:                                               ; preds = %2
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %39
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %47 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 5
  %50 = add nsw i32 %49, 4
  store i32 %50, i32* %6, align 4
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %52 = load i32, i32* @PACKET3_MEM_WRITE, align 4
  %53 = call i32 @PACKET3(i32 %52, i32 3)
  %54 = call i32 @radeon_ring_write(%struct.radeon_ring* %51, i32 %53)
  %55 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %57 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, -4
  %60 = call i32 @radeon_ring_write(%struct.radeon_ring* %55, i32 %59)
  %61 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %63 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @upper_32_bits(i32 %64)
  %66 = and i32 %65, 255
  %67 = or i32 %66, 262144
  %68 = call i32 @radeon_ring_write(%struct.radeon_ring* %61, i32 %67)
  %69 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @radeon_ring_write(%struct.radeon_ring* %69, i32 %70)
  %72 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %73 = call i32 @radeon_ring_write(%struct.radeon_ring* %72, i32 0)
  br label %74

74:                                               ; preds = %45, %39
  br label %75

75:                                               ; preds = %74, %18
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %77 = load i32, i32* @PACKET3_INDIRECT_BUFFER, align 4
  %78 = call i32 @PACKET3(i32 %77, i32 2)
  %79 = call i32 @radeon_ring_write(%struct.radeon_ring* %76, i32 %78)
  %80 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %81 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %82 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, -4
  %85 = call i32 @radeon_ring_write(%struct.radeon_ring* %80, i32 %84)
  %86 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %87 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %88 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @upper_32_bits(i32 %89)
  %91 = and i32 %90, 255
  %92 = call i32 @radeon_ring_write(%struct.radeon_ring* %86, i32 %91)
  %93 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %94 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %95 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @radeon_ring_write(%struct.radeon_ring* %93, i32 %96)
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
