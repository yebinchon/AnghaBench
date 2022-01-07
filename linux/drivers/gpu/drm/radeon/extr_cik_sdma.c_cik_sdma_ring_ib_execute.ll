; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_ring_ib_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_ring_ib_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__, %struct.radeon_ring* }
%struct.TYPE_6__ = type { i64 }
%struct.radeon_ring = type { i32, i32 }
%struct.radeon_ib = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SDMA_OPCODE_WRITE = common dso_local global i32 0, align 4
@SDMA_WRITE_SUB_OPCODE_LINEAR = common dso_local global i32 0, align 4
@SDMA_OPCODE_NOP = common dso_local global i32 0, align 4
@SDMA_OPCODE_INDIRECT_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_sdma_ring_ib_execute(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 1
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %11 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i64 %13
  store %struct.radeon_ring* %14, %struct.radeon_ring** %5, align 8
  %15 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %21 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %26 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %19
  %33 = phi i32 [ %30, %19 ], [ 0, %31 ]
  %34 = and i32 %33, 15
  store i32 %34, i32* %6, align 4
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %32
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %42 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 5
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %49, %40
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 7
  %48 = icmp ne i32 %47, 4
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %45

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 4
  store i32 %54, i32* %7, align 4
  %55 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %56 = load i32, i32* @SDMA_OPCODE_WRITE, align 4
  %57 = load i32, i32* @SDMA_WRITE_SUB_OPCODE_LINEAR, align 4
  %58 = call i32 @SDMA_PACKET(i32 %56, i32 %57, i32 0)
  %59 = call i32 @radeon_ring_write(%struct.radeon_ring* %55, i32 %58)
  %60 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %61 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %62 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, -4
  %65 = call i32 @radeon_ring_write(%struct.radeon_ring* %60, i32 %64)
  %66 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %68 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @upper_32_bits(i32 %69)
  %71 = call i32 @radeon_ring_write(%struct.radeon_ring* %66, i32 %70)
  %72 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %73 = call i32 @radeon_ring_write(%struct.radeon_ring* %72, i32 1)
  %74 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @radeon_ring_write(%struct.radeon_ring* %74, i32 %75)
  br label %77

77:                                               ; preds = %52, %32
  br label %78

78:                                               ; preds = %84, %77
  %79 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %80 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 7
  %83 = icmp ne i32 %82, 4
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %86 = load i32, i32* @SDMA_OPCODE_NOP, align 4
  %87 = call i32 @SDMA_PACKET(i32 %86, i32 0, i32 0)
  %88 = call i32 @radeon_ring_write(%struct.radeon_ring* %85, i32 %87)
  br label %78

89:                                               ; preds = %78
  %90 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %91 = load i32, i32* @SDMA_OPCODE_INDIRECT_BUFFER, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @SDMA_PACKET(i32 %91, i32 0, i32 %92)
  %94 = call i32 @radeon_ring_write(%struct.radeon_ring* %90, i32 %93)
  %95 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %96 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %97 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, -32
  %100 = call i32 @radeon_ring_write(%struct.radeon_ring* %95, i32 %99)
  %101 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %102 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %103 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @upper_32_bits(i32 %104)
  %106 = call i32 @radeon_ring_write(%struct.radeon_ring* %101, i32 %105)
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %108 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %109 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @radeon_ring_write(%struct.radeon_ring* %107, i32 %110)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @SDMA_PACKET(i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
