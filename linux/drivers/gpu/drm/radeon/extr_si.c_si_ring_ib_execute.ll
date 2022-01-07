; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_ring_ib_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_ring_ib_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__, %struct.radeon_ring* }
%struct.TYPE_6__ = type { i64 }
%struct.radeon_ring = type { i32, i32, i32 }
%struct.radeon_ib = type { i64, i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PACKET3_SWITCH_BUFFER = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER_CONST = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i32 0, align 4
@PACKET3_WRITE_DATA = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER = common dso_local global i32 0, align 4
@CP_COHER_CNTL2 = common dso_local global i32 0, align 4
@PACKET3_SURFACE_SYNC = common dso_local global i32 0, align 4
@PACKET3_TCL1_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_TC_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_SH_KCACHE_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_SH_ICACHE_ACTION_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @si_ring_ib_execute(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 1
  %11 = load %struct.radeon_ring*, %struct.radeon_ring** %10, align 8
  %12 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %11, i64 %14
  store %struct.radeon_ring* %15, %struct.radeon_ring** %5, align 8
  %16 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %16, i32 0, i32 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %21, i32 0, i32 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %27 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %33

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %20
  %34 = phi i32 [ %31, %20 ], [ 0, %32 ]
  store i32 %34, i32* %6, align 4
  %35 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %36 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %41 = load i32, i32* @PACKET3_SWITCH_BUFFER, align 4
  %42 = call i32 @PACKET3(i32 %41, i32 0)
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %40, i32 %42)
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %45 = call i32 @radeon_ring_write(%struct.radeon_ring* %44, i32 0)
  %46 = load i32, i32* @PACKET3_INDIRECT_BUFFER_CONST, align 4
  %47 = call i32 @PACKET3(i32 %46, i32 2)
  store i32 %47, i32* %7, align 4
  br label %113

48:                                               ; preds = %33
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %50 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %48
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %55 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 3
  %58 = add nsw i32 %57, 4
  %59 = add nsw i32 %58, 8
  store i32 %59, i32* %8, align 4
  %60 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %61 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %62 = call i32 @PACKET3(i32 %61, i32 1)
  %63 = call i32 @radeon_ring_write(%struct.radeon_ring* %60, i32 %62)
  %64 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %65 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %66 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %69 = sub nsw i32 %67, %68
  %70 = ashr i32 %69, 2
  %71 = call i32 @radeon_ring_write(%struct.radeon_ring* %64, i32 %70)
  %72 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @radeon_ring_write(%struct.radeon_ring* %72, i32 %73)
  br label %110

75:                                               ; preds = %48
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %75
  %82 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %83 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 5
  %86 = add nsw i32 %85, 4
  %87 = add nsw i32 %86, 8
  store i32 %87, i32* %8, align 4
  %88 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %89 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %90 = call i32 @PACKET3(i32 %89, i32 3)
  %91 = call i32 @radeon_ring_write(%struct.radeon_ring* %88, i32 %90)
  %92 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %93 = call i32 @radeon_ring_write(%struct.radeon_ring* %92, i32 256)
  %94 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %95 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %96 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, -4
  %99 = call i32 @radeon_ring_write(%struct.radeon_ring* %94, i32 %98)
  %100 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %101 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %102 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @upper_32_bits(i32 %103)
  %105 = call i32 @radeon_ring_write(%struct.radeon_ring* %100, i32 %104)
  %106 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @radeon_ring_write(%struct.radeon_ring* %106, i32 %107)
  br label %109

109:                                              ; preds = %81, %75
  br label %110

110:                                              ; preds = %109, %53
  %111 = load i32, i32* @PACKET3_INDIRECT_BUFFER, align 4
  %112 = call i32 @PACKET3(i32 %111, i32 2)
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %110, %39
  %114 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @radeon_ring_write(%struct.radeon_ring* %114, i32 %115)
  %117 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %118 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %119 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, -4
  %122 = call i32 @radeon_ring_write(%struct.radeon_ring* %117, i32 %121)
  %123 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %124 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %125 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @upper_32_bits(i32 %126)
  %128 = and i32 %127, 65535
  %129 = call i32 @radeon_ring_write(%struct.radeon_ring* %123, i32 %128)
  %130 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %131 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %132 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %6, align 4
  %135 = shl i32 %134, 24
  %136 = or i32 %133, %135
  %137 = call i32 @radeon_ring_write(%struct.radeon_ring* %130, i32 %136)
  %138 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %139 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %175, label %142

142:                                              ; preds = %113
  %143 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %144 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %145 = call i32 @PACKET3(i32 %144, i32 1)
  %146 = call i32 @radeon_ring_write(%struct.radeon_ring* %143, i32 %145)
  %147 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %148 = load i32, i32* @CP_COHER_CNTL2, align 4
  %149 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %150 = sub nsw i32 %148, %149
  %151 = ashr i32 %150, 2
  %152 = call i32 @radeon_ring_write(%struct.radeon_ring* %147, i32 %151)
  %153 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @radeon_ring_write(%struct.radeon_ring* %153, i32 %154)
  %156 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %157 = load i32, i32* @PACKET3_SURFACE_SYNC, align 4
  %158 = call i32 @PACKET3(i32 %157, i32 3)
  %159 = call i32 @radeon_ring_write(%struct.radeon_ring* %156, i32 %158)
  %160 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %161 = load i32, i32* @PACKET3_TCL1_ACTION_ENA, align 4
  %162 = load i32, i32* @PACKET3_TC_ACTION_ENA, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @PACKET3_SH_KCACHE_ACTION_ENA, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @PACKET3_SH_ICACHE_ACTION_ENA, align 4
  %167 = or i32 %165, %166
  %168 = call i32 @radeon_ring_write(%struct.radeon_ring* %160, i32 %167)
  %169 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %170 = call i32 @radeon_ring_write(%struct.radeon_ring* %169, i32 -1)
  %171 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %172 = call i32 @radeon_ring_write(%struct.radeon_ring* %171, i32 0)
  %173 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %174 = call i32 @radeon_ring_write(%struct.radeon_ring* %173, i32 10)
  br label %175

175:                                              ; preds = %142, %113
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
