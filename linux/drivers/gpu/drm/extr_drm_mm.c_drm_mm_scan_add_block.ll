; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_drm_mm_scan_add_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_drm_mm_scan_add_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_scan = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.drm_mm* }
%struct.drm_mm = type { i32 (%struct.drm_mm_node*, i32, i64*, i64*)*, i32 }
%struct.drm_mm_node = type { i32, i32, i32, %struct.drm_mm* }

@node_list = common dso_local global i32 0, align 4
@DRM_MM_INSERT_HIGH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mm_scan_add_block(%struct.drm_mm_scan* %0, %struct.drm_mm_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_mm_scan*, align 8
  %5 = alloca %struct.drm_mm_node*, align 8
  %6 = alloca %struct.drm_mm*, align 8
  %7 = alloca %struct.drm_mm_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.drm_mm_scan* %0, %struct.drm_mm_scan** %4, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %5, align 8
  %15 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %16 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %15, i32 0, i32 9
  %17 = load %struct.drm_mm*, %struct.drm_mm** %16, align 8
  store %struct.drm_mm* %17, %struct.drm_mm** %6, align 8
  %18 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %19 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %18, i32 0, i32 3
  %20 = load %struct.drm_mm*, %struct.drm_mm** %19, align 8
  %21 = load %struct.drm_mm*, %struct.drm_mm** %6, align 8
  %22 = icmp ne %struct.drm_mm* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @DRM_MM_BUG_ON(i32 %23)
  %25 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %26 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @DRM_MM_BUG_ON(i32 %30)
  %32 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %33 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @DRM_MM_BUG_ON(i32 %34)
  %36 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %37 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.drm_mm*, %struct.drm_mm** %6, align 8
  %39 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %43 = load i32, i32* @node_list, align 4
  %44 = call %struct.drm_mm_node* @list_prev_entry(%struct.drm_mm_node* %42, i32 %43)
  store %struct.drm_mm_node* %44, %struct.drm_mm_node** %7, align 8
  %45 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %46 = load i32, i32* @node_list, align 4
  %47 = call %struct.drm_mm_node* @list_next_entry(%struct.drm_mm_node* %45, i32 %46)
  %48 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %49 = icmp ne %struct.drm_mm_node* %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @DRM_MM_BUG_ON(i32 %50)
  %52 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %53 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %52, i32 0, i32 1
  %54 = call i32 @__list_del_entry(i32* %53)
  %55 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %56 = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %55)
  store i64 %56, i64* %8, align 8
  %57 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %58 = call i64 @__drm_mm_hole_node_end(%struct.drm_mm_node* %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %11, align 8
  %61 = load %struct.drm_mm*, %struct.drm_mm** %6, align 8
  %62 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %61, i32 0, i32 0
  %63 = load i32 (%struct.drm_mm_node*, i32, i64*, i64*)*, i32 (%struct.drm_mm_node*, i32, i64*, i64*)** %62, align 8
  %64 = icmp ne i32 (%struct.drm_mm_node*, i32, i64*, i64*)* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %2
  %66 = load %struct.drm_mm*, %struct.drm_mm** %6, align 8
  %67 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %66, i32 0, i32 0
  %68 = load i32 (%struct.drm_mm_node*, i32, i64*, i64*)*, i32 (%struct.drm_mm_node*, i32, i64*, i64*)** %67, align 8
  %69 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %70 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %71 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %68(%struct.drm_mm_node* %69, i32 %72, i64* %10, i64* %11)
  br label %74

74:                                               ; preds = %65, %2
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %77 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @max(i64 %75, i32 %78)
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %82 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @min(i64 %80, i32 %83)
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp sle i64 %85, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %74
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %12, align 8
  %91 = sub nsw i64 %89, %90
  %92 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %93 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88, %74
  store i32 0, i32* %3, align 4
  br label %220

97:                                               ; preds = %88
  %98 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %99 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @DRM_MM_INSERT_HIGH, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i64, i64* %13, align 8
  %105 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %106 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %104, %107
  store i64 %108, i64* %12, align 8
  br label %109

109:                                              ; preds = %103, %97
  %110 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %111 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %186

114:                                              ; preds = %109
  %115 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %116 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @likely(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load i64, i64* %12, align 8
  %122 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %123 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = and i64 %121, %124
  store i64 %125, i64* %14, align 8
  br label %132

126:                                              ; preds = %114
  %127 = load i64, i64* %12, align 8
  %128 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %129 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @div64_u64_rem(i64 %127, i64 %130, i64* %14)
  br label %132

132:                                              ; preds = %126, %120
  %133 = load i64, i64* %14, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %185

135:                                              ; preds = %132
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* %12, align 8
  %138 = sub nsw i64 %137, %136
  store i64 %138, i64* %12, align 8
  %139 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %140 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @DRM_MM_INSERT_HIGH, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %135
  %145 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %146 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %12, align 8
  %149 = add nsw i64 %148, %147
  store i64 %149, i64* %12, align 8
  br label %150

150:                                              ; preds = %144, %135
  %151 = load i64, i64* %12, align 8
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %154 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @max(i64 %152, i32 %155)
  %157 = icmp slt i64 %151, %156
  br i1 %157, label %170, label %158

158:                                              ; preds = %150
  %159 = load i64, i64* %11, align 8
  %160 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %161 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @min(i64 %159, i32 %162)
  %164 = load i64, i64* %12, align 8
  %165 = sub nsw i64 %163, %164
  %166 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %167 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp slt i64 %165, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %158, %150
  store i32 0, i32* %3, align 4
  br label %220

171:                                              ; preds = %158
  %172 = load i64, i64* %13, align 8
  %173 = load i64, i64* %12, align 8
  %174 = icmp sle i64 %172, %173
  br i1 %174, label %183, label %175

175:                                              ; preds = %171
  %176 = load i64, i64* %13, align 8
  %177 = load i64, i64* %12, align 8
  %178 = sub nsw i64 %176, %177
  %179 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %180 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp slt i64 %178, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %175, %171
  store i32 0, i32* %3, align 4
  br label %220

184:                                              ; preds = %175
  br label %185

185:                                              ; preds = %184, %132
  br label %186

186:                                              ; preds = %185, %109
  %187 = load i64, i64* %12, align 8
  %188 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %189 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %188, i32 0, i32 4
  store i64 %187, i64* %189, align 8
  %190 = load i64, i64* %12, align 8
  %191 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %192 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %190, %193
  %195 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %196 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %195, i32 0, i32 5
  store i64 %194, i64* %196, align 8
  %197 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %198 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %201 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = icmp sge i64 %199, %202
  %204 = zext i1 %203 to i32
  %205 = call i32 @DRM_MM_BUG_ON(i32 %204)
  %206 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %207 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %8, align 8
  %210 = icmp slt i64 %208, %209
  %211 = zext i1 %210 to i32
  %212 = call i32 @DRM_MM_BUG_ON(i32 %211)
  %213 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %4, align 8
  %214 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %9, align 8
  %217 = icmp sgt i64 %215, %216
  %218 = zext i1 %217 to i32
  %219 = call i32 @DRM_MM_BUG_ON(i32 %218)
  store i32 1, i32* %3, align 4
  br label %220

220:                                              ; preds = %186, %183, %170, %96
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @DRM_MM_BUG_ON(i32) #1

declare dso_local %struct.drm_mm_node* @list_prev_entry(%struct.drm_mm_node*, i32) #1

declare dso_local %struct.drm_mm_node* @list_next_entry(%struct.drm_mm_node*, i32) #1

declare dso_local i32 @__list_del_entry(i32*) #1

declare dso_local i64 @__drm_mm_hole_node_start(%struct.drm_mm_node*) #1

declare dso_local i64 @__drm_mm_hole_node_end(%struct.drm_mm_node*) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @div64_u64_rem(i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
