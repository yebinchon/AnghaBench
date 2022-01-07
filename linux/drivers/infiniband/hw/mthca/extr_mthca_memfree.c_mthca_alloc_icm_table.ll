; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_alloc_icm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_alloc_icm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_icm_table = type { i32, i32, i32, i32, i32, %struct.TYPE_4__**, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.mthca_dev = type { i32 }

@MTHCA_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4
@icm = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mthca_icm_table* @mthca_alloc_icm_table(%struct.mthca_dev* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.mthca_icm_table*, align 8
  %9 = alloca %struct.mthca_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mthca_icm_table*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %17, align 4
  %26 = call i32 @DIV_ROUND_UP(i32 %24, i32 %25)
  store i32 %26, i32* %18, align 4
  %27 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %28 = load i32, i32* @icm, align 4
  %29 = load i32, i32* %18, align 4
  %30 = call i32 @struct_size(%struct.mthca_icm_table* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.mthca_icm_table* @kmalloc(i32 %30, i32 %31)
  store %struct.mthca_icm_table* %32, %struct.mthca_icm_table** %16, align 8
  %33 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %34 = icmp ne %struct.mthca_icm_table* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %7
  store %struct.mthca_icm_table* null, %struct.mthca_icm_table** %8, align 8
  br label %228

36:                                               ; preds = %7
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %39 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %38, i32 0, i32 7
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %18, align 4
  %41 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %42 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %45 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %48 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %51 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %54 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %56 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %55, i32 0, i32 6
  %57 = call i32 @mutex_init(i32* %56)
  store i32 0, i32* %20, align 4
  br label %58

58:                                               ; preds = %69, %36
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %64 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %63, i32 0, i32 5
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %64, align 8
  %66 = load i32, i32* %20, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %67
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %68, align 8
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %20, align 4
  br label %58

72:                                               ; preds = %58
  store i32 0, i32* %20, align 4
  br label %73

73:                                               ; preds = %178, %72
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %11, align 4
  %79 = mul nsw i32 %77, %78
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %181

81:                                               ; preds = %73
  %82 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %20, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = mul nsw i32 %87, %88
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %81
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sub nsw i32 %94, %97
  store i32 %98, i32* %19, align 4
  br label %99

99:                                               ; preds = %91, %81
  %100 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* @PAGE_SHIFT, align 4
  %103 = lshr i32 %101, %102
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @GFP_KERNEL, align 4
  br label %110

108:                                              ; preds = %99
  %109 = load i32, i32* @GFP_HIGHUSER, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = load i32, i32* @__GFP_NOWARN, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %15, align 4
  %115 = call %struct.TYPE_4__* @mthca_alloc_icm(%struct.mthca_dev* %100, i32 %103, i32 %113, i32 %114)
  %116 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %117 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %116, i32 0, i32 5
  %118 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %117, align 8
  %119 = load i32, i32* %20, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %118, i64 %120
  store %struct.TYPE_4__* %115, %struct.TYPE_4__** %121, align 8
  %122 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %123 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %122, i32 0, i32 5
  %124 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %123, align 8
  %125 = load i32, i32* %20, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %124, i64 %126
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = icmp ne %struct.TYPE_4__* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %110
  br label %183

131:                                              ; preds = %110
  %132 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %133 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %134 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %133, i32 0, i32 5
  %135 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %134, align 8
  %136 = load i32, i32* %20, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %135, i64 %137
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i64, i64* %10, align 8
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %143 = mul nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %140, %144
  %146 = call i64 @mthca_MAP_ICM(%struct.mthca_dev* %132, %struct.TYPE_4__* %139, i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %131
  %149 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %150 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %151 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %150, i32 0, i32 5
  %152 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %151, align 8
  %153 = load i32, i32* %20, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %152, i64 %154
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %158 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @mthca_free_icm(%struct.mthca_dev* %149, %struct.TYPE_4__* %156, i32 %159)
  %161 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %162 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %161, i32 0, i32 5
  %163 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %162, align 8
  %164 = load i32, i32* %20, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %163, i64 %165
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %166, align 8
  br label %183

167:                                              ; preds = %131
  %168 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %169 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %168, i32 0, i32 5
  %170 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %169, align 8
  %171 = load i32, i32* %20, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %170, i64 %172
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %167
  %179 = load i32, i32* %20, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %20, align 4
  br label %73

181:                                              ; preds = %73
  %182 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  store %struct.mthca_icm_table* %182, %struct.mthca_icm_table** %8, align 8
  br label %228

183:                                              ; preds = %148, %130
  store i32 0, i32* %20, align 4
  br label %184

184:                                              ; preds = %222, %183
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %18, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %225

188:                                              ; preds = %184
  %189 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %190 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %189, i32 0, i32 5
  %191 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %190, align 8
  %192 = load i32, i32* %20, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %191, i64 %193
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = icmp ne %struct.TYPE_4__* %195, null
  br i1 %196, label %197, label %221

197:                                              ; preds = %188
  %198 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %199 = load i64, i64* %10, align 8
  %200 = load i32, i32* %20, align 4
  %201 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %202 = mul nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %199, %203
  %205 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %206 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %207 = sdiv i32 %205, %206
  %208 = call i32 @mthca_UNMAP_ICM(%struct.mthca_dev* %198, i64 %204, i32 %207)
  %209 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %210 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %211 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %210, i32 0, i32 5
  %212 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %211, align 8
  %213 = load i32, i32* %20, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %212, i64 %214
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %218 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @mthca_free_icm(%struct.mthca_dev* %209, %struct.TYPE_4__* %216, i32 %219)
  br label %221

221:                                              ; preds = %197, %188
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %20, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %20, align 4
  br label %184

225:                                              ; preds = %184
  %226 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %227 = call i32 @kfree(%struct.mthca_icm_table* %226)
  store %struct.mthca_icm_table* null, %struct.mthca_icm_table** %8, align 8
  br label %228

228:                                              ; preds = %225, %181, %35
  %229 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %8, align 8
  ret %struct.mthca_icm_table* %229
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.mthca_icm_table* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.mthca_icm_table*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_4__* @mthca_alloc_icm(%struct.mthca_dev*, i32, i32, i32) #1

declare dso_local i64 @mthca_MAP_ICM(%struct.mthca_dev*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @mthca_free_icm(%struct.mthca_dev*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @mthca_UNMAP_ICM(%struct.mthca_dev*, i64, i32) #1

declare dso_local i32 @kfree(%struct.mthca_icm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
