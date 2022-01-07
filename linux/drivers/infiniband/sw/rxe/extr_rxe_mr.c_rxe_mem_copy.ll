; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_rxe_mem_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_rxe_mem_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_mem = type { i64, %struct.TYPE_4__*, %struct.rxe_map** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rxe_map = type { %struct.rxe_phys_buf* }
%struct.rxe_phys_buf = type { i64, i64 }

@RXE_MEM_TYPE_DMA = common dso_local global i64 0, align 8
@to_mem_obj = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@RXE_BUF_PER_MAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_mem_copy(%struct.rxe_mem* %0, i64 %1, i8* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rxe_mem*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.rxe_map**, align 8
  %18 = alloca %struct.rxe_phys_buf*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store %struct.rxe_mem* %0, %struct.rxe_mem** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  br label %33

32:                                               ; preds = %6
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %31, %29 ], [ 0, %32 ]
  store i32 %34, i32* %22, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %212

38:                                               ; preds = %33
  %39 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %40 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RXE_MEM_TYPE_DMA, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @to_mem_obj, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i8*, i8** %10, align 8
  br label %53

50:                                               ; preds = %44
  %51 = load i64, i64* %9, align 8
  %52 = inttoptr i64 %51 to i8*
  br label %53

53:                                               ; preds = %50, %48
  %54 = phi i8* [ %49, %48 ], [ %52, %50 ]
  store i8* %54, i8** %23, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @to_mem_obj, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i64, i64* %9, align 8
  %60 = inttoptr i64 %59 to i8*
  br label %63

61:                                               ; preds = %53
  %62 = load i8*, i8** %10, align 8
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i8* [ %60, %58 ], [ %62, %61 ]
  store i8* %64, i8** %24, align 8
  %65 = load i8*, i8** %24, align 8
  %66 = load i8*, i8** %23, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @memcpy(i8* %65, i8* %66, i32 %67)
  %69 = load i32*, i32** %13, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %63
  %72 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %73 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @to_rdev(i32 %77)
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %24, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @rxe_crc32(i32 %78, i32 %80, i8* %81, i32 %82)
  %84 = load i32*, i32** %13, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %71, %63
  store i32 0, i32* %7, align 4
  br label %212

86:                                               ; preds = %38
  %87 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %88 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %87, i32 0, i32 2
  %89 = load %struct.rxe_map**, %struct.rxe_map*** %88, align 8
  %90 = icmp ne %struct.rxe_map** %89, null
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @WARN_ON_ONCE(i32 %92)
  %94 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @mem_check_range(%struct.rxe_mem* %94, i64 %95, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load i32, i32* @EFAULT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %14, align 4
  br label %210

103:                                              ; preds = %86
  %104 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @lookup_iova(%struct.rxe_mem* %104, i64 %105, i32* %19, i32* %20, i64* %21)
  %107 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %108 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %107, i32 0, i32 2
  %109 = load %struct.rxe_map**, %struct.rxe_map*** %108, align 8
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.rxe_map*, %struct.rxe_map** %109, i64 %111
  store %struct.rxe_map** %112, %struct.rxe_map*** %17, align 8
  %113 = load %struct.rxe_map**, %struct.rxe_map*** %17, align 8
  %114 = getelementptr inbounds %struct.rxe_map*, %struct.rxe_map** %113, i64 0
  %115 = load %struct.rxe_map*, %struct.rxe_map** %114, align 8
  %116 = getelementptr inbounds %struct.rxe_map, %struct.rxe_map* %115, i32 0, i32 0
  %117 = load %struct.rxe_phys_buf*, %struct.rxe_phys_buf** %116, align 8
  %118 = load i32, i32* %20, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.rxe_phys_buf, %struct.rxe_phys_buf* %117, i64 %119
  store %struct.rxe_phys_buf* %120, %struct.rxe_phys_buf** %18, align 8
  br label %121

121:                                              ; preds = %202, %103
  %122 = load i32, i32* %11, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %203

124:                                              ; preds = %121
  %125 = load %struct.rxe_phys_buf*, %struct.rxe_phys_buf** %18, align 8
  %126 = getelementptr inbounds %struct.rxe_phys_buf, %struct.rxe_phys_buf* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = load i64, i64* %21, align 8
  %130 = getelementptr i8, i8* %128, i64 %129
  store i8* %130, i8** %16, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @to_mem_obj, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %124
  %135 = load i8*, i8** %10, align 8
  br label %138

136:                                              ; preds = %124
  %137 = load i8*, i8** %16, align 8
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i8* [ %135, %134 ], [ %137, %136 ]
  store i8* %139, i8** %25, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @to_mem_obj, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i8*, i8** %16, align 8
  br label %147

145:                                              ; preds = %138
  %146 = load i8*, i8** %10, align 8
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i8* [ %144, %143 ], [ %146, %145 ]
  store i8* %148, i8** %26, align 8
  %149 = load %struct.rxe_phys_buf*, %struct.rxe_phys_buf** %18, align 8
  %150 = getelementptr inbounds %struct.rxe_phys_buf, %struct.rxe_phys_buf* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %21, align 8
  %153 = sub i64 %151, %152
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %147
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %158, %147
  %161 = load i8*, i8** %26, align 8
  %162 = load i8*, i8** %25, align 8
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @memcpy(i8* %161, i8* %162, i32 %163)
  %165 = load i32*, i32** %13, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %179

167:                                              ; preds = %160
  %168 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %169 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %168, i32 0, i32 1
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @to_rdev(i32 %173)
  %175 = load i32, i32* %22, align 4
  %176 = load i8*, i8** %26, align 8
  %177 = load i32, i32* %15, align 4
  %178 = call i32 @rxe_crc32(i32 %174, i32 %175, i8* %176, i32 %177)
  store i32 %178, i32* %22, align 4
  br label %179

179:                                              ; preds = %167, %160
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %11, align 4
  %182 = sub nsw i32 %181, %180
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load i8*, i8** %10, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr i8, i8* %184, i64 %185
  store i8* %186, i8** %10, align 8
  store i64 0, i64* %21, align 8
  %187 = load %struct.rxe_phys_buf*, %struct.rxe_phys_buf** %18, align 8
  %188 = getelementptr inbounds %struct.rxe_phys_buf, %struct.rxe_phys_buf* %187, i32 1
  store %struct.rxe_phys_buf* %188, %struct.rxe_phys_buf** %18, align 8
  %189 = load i32, i32* %20, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %20, align 4
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* @RXE_BUF_PER_MAP, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %179
  store i32 0, i32* %20, align 4
  %195 = load %struct.rxe_map**, %struct.rxe_map*** %17, align 8
  %196 = getelementptr inbounds %struct.rxe_map*, %struct.rxe_map** %195, i32 1
  store %struct.rxe_map** %196, %struct.rxe_map*** %17, align 8
  %197 = load %struct.rxe_map**, %struct.rxe_map*** %17, align 8
  %198 = getelementptr inbounds %struct.rxe_map*, %struct.rxe_map** %197, i64 0
  %199 = load %struct.rxe_map*, %struct.rxe_map** %198, align 8
  %200 = getelementptr inbounds %struct.rxe_map, %struct.rxe_map* %199, i32 0, i32 0
  %201 = load %struct.rxe_phys_buf*, %struct.rxe_phys_buf** %200, align 8
  store %struct.rxe_phys_buf* %201, %struct.rxe_phys_buf** %18, align 8
  br label %202

202:                                              ; preds = %194, %179
  br label %121

203:                                              ; preds = %121
  %204 = load i32*, i32** %13, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32, i32* %22, align 4
  %208 = load i32*, i32** %13, align 8
  store i32 %207, i32* %208, align 4
  br label %209

209:                                              ; preds = %206, %203
  store i32 0, i32* %7, align 4
  br label %212

210:                                              ; preds = %100
  %211 = load i32, i32* %14, align 4
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %210, %209, %85, %37
  %213 = load i32, i32* %7, align 4
  ret i32 %213
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @rxe_crc32(i32, i32, i8*, i32) #1

declare dso_local i32 @to_rdev(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mem_check_range(%struct.rxe_mem*, i64, i32) #1

declare dso_local i32 @lookup_iova(%struct.rxe_mem*, i64, i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
