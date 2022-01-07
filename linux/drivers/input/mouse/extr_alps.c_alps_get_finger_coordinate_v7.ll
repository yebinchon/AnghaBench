; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_get_finger_coordinate_v7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_get_finger_coordinate_v7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_mt_pos = type { i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_mt_pos*, i8*, i8)* @alps_get_finger_coordinate_v7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_get_finger_coordinate_v7(%struct.input_mt_pos* %0, i8* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.input_mt_pos*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store %struct.input_mt_pos* %0, %struct.input_mt_pos** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load i8*, i8** %5, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 2
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 128
  %12 = shl i32 %11, 4
  %13 = trunc i32 %12 to i8
  %14 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %15 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %14, i64 0
  %16 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %15, i32 0, i32 0
  store i8 %13, i8* %16, align 1
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 63
  %22 = shl i32 %21, 5
  %23 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %24 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %23, i64 0
  %25 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, %22
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %25, align 1
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 48
  %35 = ashr i32 %34, 1
  %36 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %37 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %36, i64 0
  %38 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %35
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %38, align 1
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 3
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 7
  %48 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %49 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %48, i64 0
  %50 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %47
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 3
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 7
  %65 = or i32 %59, %64
  %66 = trunc i32 %65 to i8
  %67 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %68 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %67, i64 0
  %69 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %68, i32 0, i32 1
  store i8 %66, i8* %69, align 1
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 128
  %75 = shl i32 %74, 4
  %76 = trunc i32 %75 to i8
  %77 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %78 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %77, i64 1
  %79 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %78, i32 0, i32 0
  store i8 %76, i8* %79, align 1
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 128
  %85 = shl i32 %84, 3
  %86 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %87 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %86, i64 1
  %88 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %87, i32 0, i32 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %90, %85
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %88, align 1
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 63
  %98 = shl i32 %97, 4
  %99 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %100 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %99, i64 1
  %101 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %100, i32 0, i32 0
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, %98
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %101, align 1
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 5
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 128
  %111 = shl i32 %110, 3
  %112 = trunc i32 %111 to i8
  %113 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %114 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %113, i64 1
  %115 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %114, i32 0, i32 1
  store i8 %112, i8* %115, align 1
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 5
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 63
  %121 = shl i32 %120, 4
  %122 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %123 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %122, i64 1
  %124 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %123, i32 0, i32 1
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = or i32 %126, %121
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %124, align 1
  %129 = load i8, i8* %6, align 1
  %130 = zext i8 %129 to i32
  switch i32 %130, label %226 [
    i32 128, label %131
    i32 130, label %164
    i32 129, label %199
  ]

131:                                              ; preds = %3
  %132 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %133 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %132, i64 1
  %134 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %133, i32 0, i32 0
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = and i32 %136, -16
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %134, align 1
  %139 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %140 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %139, i64 1
  %141 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %140, i32 0, i32 1
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = or i32 %143, 15
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %141, align 1
  %146 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %147 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %146, i64 1
  %148 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %147, i32 0, i32 1
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %150, 2047
  br i1 %151, label %152, label %163

152:                                              ; preds = %131
  %153 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %154 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %153, i64 1
  %155 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %154, i32 0, i32 0
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %157, 4080
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %161 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %160, i64 1
  %162 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %161, i32 0, i32 0
  store i8 0, i8* %162, align 1
  br label %163

163:                                              ; preds = %159, %152, %131
  br label %226

164:                                              ; preds = %3
  %165 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %166 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %165, i64 1
  %167 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %166, i32 0, i32 0
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = and i32 %169, -64
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %167, align 1
  %172 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %173 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %172, i64 1
  %174 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %173, i32 0, i32 1
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = and i32 %176, -33
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %174, align 1
  %179 = load i8*, i8** %5, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 4
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = and i32 %182, 2
  %184 = shl i32 %183, 4
  %185 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %186 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %185, i64 1
  %187 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %186, i32 0, i32 1
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = or i32 %189, %184
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %187, align 1
  %192 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %193 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %192, i64 1
  %194 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %193, i32 0, i32 1
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = or i32 %196, 31
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %194, align 1
  br label %226

199:                                              ; preds = %3
  %200 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %201 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %200, i64 1
  %202 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %201, i32 0, i32 0
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = and i32 %204, -64
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %202, align 1
  %207 = load i8*, i8** %5, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = and i32 %210, 32
  %212 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %213 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %212, i64 1
  %214 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %213, i32 0, i32 0
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = or i32 %216, %211
  %218 = trunc i32 %217 to i8
  store i8 %218, i8* %214, align 1
  %219 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %220 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %219, i64 1
  %221 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %220, i32 0, i32 1
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = or i32 %223, 15
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %221, align 1
  br label %226

226:                                              ; preds = %3, %199, %164, %163
  %227 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %228 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %227, i64 0
  %229 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %228, i32 0, i32 1
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = sub nsw i32 2047, %231
  %233 = trunc i32 %232 to i8
  %234 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %235 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %234, i64 0
  %236 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %235, i32 0, i32 1
  store i8 %233, i8* %236, align 1
  %237 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %238 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %237, i64 1
  %239 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %238, i32 0, i32 1
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = sub nsw i32 2047, %241
  %243 = trunc i32 %242 to i8
  %244 = load %struct.input_mt_pos*, %struct.input_mt_pos** %4, align 8
  %245 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %244, i64 1
  %246 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %245, i32 0, i32 1
  store i8 %243, i8* %246, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
