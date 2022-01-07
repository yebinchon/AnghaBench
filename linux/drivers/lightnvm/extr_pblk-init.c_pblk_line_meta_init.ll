; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_line_meta_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_line_meta_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.pblk_line_meta, %struct.nvm_tgt_dev* }
%struct.pblk_line_meta = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"config. not supported. Min. LUN in line:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*)* @pblk_line_meta_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_line_meta_init(%struct.pblk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.nvm_tgt_dev*, align 8
  %5 = alloca %struct.nvm_geo*, align 8
  %6 = alloca %struct.pblk_line_meta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  %10 = load %struct.pblk*, %struct.pblk** %3, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 2
  %12 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %11, align 8
  store %struct.nvm_tgt_dev* %12, %struct.nvm_tgt_dev** %4, align 8
  %13 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %4, align 8
  %14 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %13, i32 0, i32 0
  store %struct.nvm_geo* %14, %struct.nvm_geo** %5, align 8
  %15 = load %struct.pblk*, %struct.pblk** %3, align 8
  %16 = getelementptr inbounds %struct.pblk, %struct.pblk* %15, i32 0, i32 1
  store %struct.pblk_line_meta* %16, %struct.pblk_line_meta** %6, align 8
  %17 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %18 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %21 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %25 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %27 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %30 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %32 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BITS_TO_LONGS(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %39 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %41 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @BITS_TO_LONGS(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %48 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %50 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @BITS_TO_LONGS(i32 %51)
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %57 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %59 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %60, 2
  %62 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %63 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %65 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sdiv i32 %66, 4
  %68 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %69 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %71 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 2
  %74 = load %struct.pblk*, %struct.pblk** %3, align 8
  %75 = getelementptr inbounds %struct.pblk, %struct.pblk* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %73, %76
  %78 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %79 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  store i32 1, i32* %9, align 4
  br label %80

80:                                               ; preds = %108, %1
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %83 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %87 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 8
  %88 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %89 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %92 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %96 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  %97 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %98 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = add i64 4, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %105 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 4
  %107 = icmp ugt i32 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %80
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %80

111:                                              ; preds = %80
  store i32 1, i32* %9, align 4
  br label %112

112:                                              ; preds = %144, %111
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %115 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %113, %116
  %118 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %119 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %118, i32 0, i32 10
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %117, i32* %121, align 4
  %122 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %123 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %122, i32 0, i32 10
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %128 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %126, %129
  %131 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %132 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %131, i32 0, i32 11
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %130, i32* %134, align 4
  %135 = load %struct.pblk*, %struct.pblk** %3, align 8
  %136 = call i32 @calc_emeta_len(%struct.pblk* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %139 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %138, i32 0, i32 11
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ugt i32 %137, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %112
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %112

147:                                              ; preds = %112
  %148 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %149 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %155 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %9, align 4
  %158 = sub nsw i32 %156, %157
  br label %160

159:                                              ; preds = %147
  br label %160

160:                                              ; preds = %159, %153
  %161 = phi i32 [ %158, %153 ], [ 0, %159 ]
  %162 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %163 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %162, i32 0, i32 12
  store i32 %161, i32* %163, align 8
  %164 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %165 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %164, i32 0, i32 13
  store i32 1, i32* %165, align 4
  %166 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %167 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %168, 1
  br i1 %169, label %170, label %190

170:                                              ; preds = %160
  %171 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %172 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %175 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %174, i32 0, i32 10
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %173, %178
  %180 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %181 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @DIV_ROUND_UP(i32 %179, i32 %182)
  %184 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %185 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %184, i32 0, i32 13
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %187, %183
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %185, align 4
  br label %190

190:                                              ; preds = %170, %160
  %191 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %192 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %191, i32 0, i32 13
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %195 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp sgt i32 %193, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %190
  %199 = load %struct.pblk*, %struct.pblk** %3, align 8
  %200 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %201 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @pblk_err(%struct.pblk* %199, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %2, align 4
  br label %207

206:                                              ; preds = %190
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %206, %198
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @calc_emeta_len(%struct.pblk*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
