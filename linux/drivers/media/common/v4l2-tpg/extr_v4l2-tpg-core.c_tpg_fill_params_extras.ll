; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_fill_params_extras.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_fill_params_extras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.tpg_draw_params = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@V4L2_FIELD_TOP = common dso_local global i64 0, align 8
@V4L2_FIELD_BOTTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpg_data*, i32, %struct.tpg_draw_params*)* @tpg_fill_params_extras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpg_fill_params_extras(%struct.tpg_data* %0, i32 %1, %struct.tpg_draw_params* %2) #0 {
  %4 = alloca %struct.tpg_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpg_draw_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tpg_draw_params* %2, %struct.tpg_draw_params** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %10 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %13 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %17 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 2
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %23 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %24, 2
  %26 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %27 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %25, %29
  br label %32

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %31, %21
  %33 = phi i32 [ %30, %21 ], [ 0, %31 ]
  %34 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %35 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %37 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %40 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %38, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %46 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %50 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %32
  %52 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %55 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @tpg_hscale_div(%struct.tpg_data* %52, i32 %53, i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %60 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %62 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %65 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sdiv i32 %66, 2
  %68 = call i32 @prandom_u32_max(i32 %67)
  %69 = mul nsw i32 %63, %68
  %70 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %71 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %73 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %77 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %75, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %51
  %82 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %83 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %87 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub i32 %85, %89
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %93 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ugt i32 %91, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %81
  %98 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %99 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %97, %81
  %103 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i8* @tpg_hscale_div(%struct.tpg_data* %103, i32 %104, i32 %105)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %102, %51
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %111 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %113 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %117 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %115, %119
  %121 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %122 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %126 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add i32 %124, %128
  %130 = icmp ugt i32 %120, %129
  br i1 %130, label %131, label %161

131:                                              ; preds = %108
  %132 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %133 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %137 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add i32 %135, %139
  %141 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %142 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sub i32 %140, %144
  store i32 %145, i32* %8, align 4
  %146 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i8* @tpg_hscale_div(%struct.tpg_data* %146, i32 %147, i32 %148)
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %153 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ugt i32 %151, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %131
  %157 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %158 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %156, %131
  br label %161

161:                                              ; preds = %160, %108
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %164 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 4
  %165 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %166 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %169 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %168, i32 0, i32 7
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %161
  %173 = load i64, i64* @V4L2_FIELD_TOP, align 8
  br label %176

174:                                              ; preds = %161
  %175 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i64 [ %173, %172 ], [ %175, %174 ]
  %178 = icmp eq i64 %167, %177
  %179 = zext i1 %178 to i32
  %180 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %6, align 8
  %181 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %180, i32 0, i32 6
  store i32 %179, i32* %181, align 8
  ret void
}

declare dso_local i8* @tpg_hscale_div(%struct.tpg_data*, i32, i32) #1

declare dso_local i32 @prandom_u32_max(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
