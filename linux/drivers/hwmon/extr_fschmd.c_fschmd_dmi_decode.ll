; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_fschmd_dmi_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_fschmd_dmi_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_header = type { i32, i32 }

@__const.fschmd_dmi_decode.shuffle = private unnamed_addr constant [3 x i32] [i32 1, i32 0, i32 2], align 4
@dmi_mult = common dso_local global i32* null, align 8
@dmi_offset = common dso_local global i32* null, align 8
@dmi_vref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmi_header*, i8*)* @fschmd_dmi_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fschmd_dmi_decode(%struct.dmi_header* %0, i8* %1) #0 {
  %3 = alloca %struct.dmi_header*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.dmi_header* %0, %struct.dmi_header** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 12, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %16 = bitcast %struct.dmi_header* %15 to i32*
  store i32* %16, i32** %10, align 8
  %17 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %18 = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 185
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %205

22:                                               ; preds = %2
  %23 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %24 = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 19
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %22
  br label %205

33:                                               ; preds = %27
  store i32 6, i32* %5, align 4
  br label %34

34:                                               ; preds = %141, %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 4
  %37 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %38 = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %144

41:                                               ; preds = %34
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 1
  br i1 %47, label %48, label %111

48:                                               ; preds = %41
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %53, 3
  br i1 %54, label %55, label %111

55:                                               ; preds = %48
  %56 = bitcast [3 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 bitcast ([3 x i32]* @__const.fschmd_dmi_decode.shuffle to i8*), i64 12, i1 false)
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %12, align 4
  %68 = shl i32 1, %67
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  br label %205

72:                                               ; preds = %55
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = or i32 %78, %85
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %88
  store i32 %86, i32* %89, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 8
  %103 = or i32 %95, %102
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %105
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* %12, align 4
  %108 = shl i32 1, %107
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %72, %48, %41
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 7
  br i1 %117, label %118, label %140

118:                                              ; preds = %111
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %205

123:                                              ; preds = %118
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 8
  %137 = or i32 %129, %136
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = or i32 %138, 8
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %123, %111
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 5
  store i32 %143, i32* %5, align 4
  br label %34

144:                                              ; preds = %34
  %145 = load i32, i32* %9, align 4
  %146 = icmp eq i32 %145, 15
  br i1 %146, label %147, label %205

147:                                              ; preds = %144
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %170, %147
  %149 = load i32, i32* %5, align 4
  %150 = icmp slt i32 %149, 3
  br i1 %150, label %151, label %173

151:                                              ; preds = %148
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %155, 10
  %157 = load i32*, i32** @dmi_mult, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %164, 10
  %166 = load i32*, i32** @dmi_offset, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %165, i32* %169, align 4
  br label %170

170:                                              ; preds = %151
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %5, align 4
  br label %148

173:                                              ; preds = %148
  %174 = load i32*, i32** @dmi_mult, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** @dmi_mult, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  store i32 %176, i32* %178, align 4
  %179 = load i32*, i32** @dmi_mult, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** @dmi_mult, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 4
  store i32 %181, i32* %183, align 4
  %184 = load i32*, i32** @dmi_mult, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** @dmi_mult, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 5
  store i32 %186, i32* %188, align 4
  %189 = load i32*, i32** @dmi_offset, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** @dmi_offset, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 3
  store i32 %191, i32* %193, align 4
  %194 = load i32*, i32** @dmi_offset, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** @dmi_offset, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 4
  store i32 %196, i32* %198, align 4
  %199 = load i32*, i32** @dmi_offset, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** @dmi_offset, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 5
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %8, align 4
  store i32 %204, i32* @dmi_vref, align 4
  br label %205

205:                                              ; preds = %21, %32, %71, %122, %173, %144
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
