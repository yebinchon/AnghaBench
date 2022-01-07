; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5_core.c_hdmi_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5_core.c_hdmi_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_core_vid_config = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_config = type { %struct.TYPE_3__, i32 }

@.str = private unnamed_addr constant [16 x i8] c"hdmi_core_init\0A\00", align 1
@DISPLAY_FLAGS_INTERLACED = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_DOUBLECLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_core_vid_config*, %struct.hdmi_config*)* @hdmi_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_core_init(%struct.hdmi_core_vid_config* %0, %struct.hdmi_config* %1) #0 {
  %3 = alloca %struct.hdmi_core_vid_config*, align 8
  %4 = alloca %struct.hdmi_config*, align 8
  store %struct.hdmi_core_vid_config* %0, %struct.hdmi_core_vid_config** %3, align 8
  store %struct.hdmi_config* %1, %struct.hdmi_config** %4, align 8
  %5 = call i32 @DSSDBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %7 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %10 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %9, i32 0, i32 0
  %11 = bitcast %struct.TYPE_3__* %8 to i8*
  %12 = bitcast %struct.TYPE_3__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 36, i1 false)
  %13 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %14 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %16 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %20 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %18, %22
  %24 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %25 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %23, %27
  %29 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %30 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %32 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %31, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %34 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %38 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %36, %40
  %42 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %43 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %41, %45
  %47 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %48 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %50 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %53 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %56 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %100

62:                                               ; preds = %2
  %63 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %64 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %65, 2
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %70 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %69, i32 0, i32 2
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %73 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, 2
  store i32 %77, i32* %75, align 4
  %78 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %79 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 2
  store i32 %81, i32* %79, align 4
  %82 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %83 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %85, align 4
  %88 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %89 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 2
  store i32 %93, i32* %91, align 4
  %94 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %95 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = sdiv i32 %98, 2
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %71, %2
  %101 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %102 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @DISPLAY_FLAGS_DOUBLECLK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %100
  %109 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %110 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, 2
  store i32 %114, i32* %112, align 4
  %115 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %116 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %117, 2
  store i32 %118, i32* %116, align 4
  %119 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %120 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %123, 2
  store i32 %124, i32* %122, align 4
  %125 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %126 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, 2
  store i32 %130, i32* %128, align 4
  %131 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %132 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %135, 2
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %108, %100
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
