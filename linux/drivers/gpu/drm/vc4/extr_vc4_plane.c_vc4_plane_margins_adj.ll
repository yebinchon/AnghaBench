; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_margins_adj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_margins_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32, i32 }
%struct.vc4_plane_state = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane_state*)* @vc4_plane_margins_adj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_plane_margins_adj(%struct.drm_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_plane_state*, align 8
  %4 = alloca %struct.vc4_plane_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %3, align 8
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %13 = call %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state* %12)
  store %struct.vc4_plane_state* %13, %struct.vc4_plane_state** %4, align 8
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %15 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %18 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(i32 %16, i32 %19)
  store %struct.drm_crtc_state* %20, %struct.drm_crtc_state** %11, align 8
  %21 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %22 = call i32 @vc4_crtc_get_margins(%struct.drm_crtc_state* %21, i32* %5, i32* %6, i32* %7, i32* %8)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %188

35:                                               ; preds = %31, %28, %25, %1
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %36, %37
  %39 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %40 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp uge i32 %38, %42
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %45, %46
  %48 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %49 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp uge i32 %47, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %44, %35
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %188

56:                                               ; preds = %44
  %57 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %58 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %61, %62
  %64 = sub i32 %60, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %66 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul i32 %67, %68
  %70 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %71 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @DIV_ROUND_CLOSEST(i32 %69, i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %77 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %80 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %84 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %87 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = sub i32 %89, %90
  %92 = icmp ugt i32 %85, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %56
  %94 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %95 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %5, align 4
  %99 = sub i32 %97, %98
  %100 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %101 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %93, %56
  %103 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %104 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add i32 %107, %108
  %110 = sub i32 %106, %109
  store i32 %110, i32* %10, align 4
  %111 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %112 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %10, align 4
  %115 = mul i32 %113, %114
  %116 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %117 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @DIV_ROUND_CLOSEST(i32 %115, i32 %119)
  %121 = ptrtoint i8* %120 to i32
  %122 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %123 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %126 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %130 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %133 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %7, align 4
  %137 = sub i32 %135, %136
  %138 = icmp ugt i32 %131, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %102
  %140 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %141 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = sub i32 %143, %144
  %146 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %147 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %139, %102
  %149 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %150 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %9, align 4
  %153 = mul i32 %151, %152
  %154 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %155 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @DIV_ROUND_CLOSEST(i32 %153, i32 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %161 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  %162 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %163 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %10, align 4
  %166 = mul i32 %164, %165
  %167 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %168 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @DIV_ROUND_CLOSEST(i32 %166, i32 %170)
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %174 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  %175 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %176 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %148
  %180 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %4, align 8
  %181 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %179, %148
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %2, align 4
  br label %188

187:                                              ; preds = %179
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %187, %184, %53, %34
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(i32, i32) #1

declare dso_local i32 @vc4_crtc_get_margins(%struct.drm_crtc_state*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
