; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_alloc_integrity_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_alloc_integrity_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.mlx5_ib_mr = type { %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_15__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.TYPE_13__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_MKC_ACCESS_MODE_KLMS = common dso_local global i32 0, align 4
@MLX5_MKC_ACCESS_MODE_MTT = common dso_local global i32 0, align 4
@create_mkey_in = common dso_local global i32 0, align 4
@memory_key_mkey_entry = common dso_local global i32 0, align 4
@bsf_en = common dso_local global i32 0, align 4
@bsf_octword_size = common dso_local global i32 0, align 4
@MLX5_MKEY_BSF_OCTO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to destroy mem psv %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to destroy wire psv %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*, %struct.mlx5_ib_mr*, i32, i32, i8**, i32)* @mlx5_alloc_integrity_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_alloc_integrity_descs(%struct.ib_pd* %0, %struct.mlx5_ib_mr* %1, i32 %2, i32 %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca %struct.mlx5_ib_mr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_ib_dev*, align 8
  %15 = alloca [2 x i8*], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %19 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mlx5_ib_dev* @to_mdev(i32 %20)
  store %struct.mlx5_ib_dev* %21, %struct.mlx5_ib_dev** %14, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.TYPE_14__* @kzalloc(i32 32, i32 %22)
  %24 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %24, i32 0, i32 0
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %25, align 8
  %26 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = icmp ne %struct.TYPE_14__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %213

33:                                               ; preds = %6
  %34 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %38 = call %struct.TYPE_13__* @to_mpd(%struct.ib_pd* %37)
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  %42 = call i32 @mlx5_core_create_psv(i32 %36, i32 %40, i32 2, i8** %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %207

46:                                               ; preds = %33
  %47 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  %48 = load i8*, i8** %47, align 16
  %49 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %50 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %49, i32 0, i32 0
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i8* %48, i8** %53, align 8
  %54 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %57 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store i8* %55, i8** %60, align 8
  %61 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %61, i32 0, i32 0
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %66 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  %69 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @MLX5_MKC_ACCESS_MODE_KLMS, align 4
  %79 = call i8* @mlx5_ib_alloc_pi_mr(%struct.ib_pd* %75, i32 %76, i32 %77, i32 4, i32 %78)
  %80 = bitcast i8* %79 to %struct.TYPE_15__*
  %81 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %82 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %81, i32 0, i32 1
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %82, align 8
  %83 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %84 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %83, i32 0, i32 1
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = call i64 @IS_ERR(%struct.TYPE_15__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %46
  %89 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %90 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %89, i32 0, i32 1
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = call i32 @PTR_ERR(%struct.TYPE_15__* %91)
  store i32 %92, i32* %17, align 4
  br label %164

93:                                               ; preds = %46
  %94 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @MLX5_MKC_ACCESS_MODE_MTT, align 4
  %98 = call i8* @mlx5_ib_alloc_pi_mr(%struct.ib_pd* %94, i32 %95, i32 %96, i32 4, i32 %97)
  %99 = bitcast i8* %98 to %struct.TYPE_15__*
  %100 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %101 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %100, i32 0, i32 2
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %101, align 8
  %102 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %103 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %102, i32 0, i32 2
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = call i64 @IS_ERR(%struct.TYPE_15__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %93
  %108 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %109 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %108, i32 0, i32 2
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = call i32 @PTR_ERR(%struct.TYPE_15__* %110)
  store i32 %111, i32* %17, align 4
  br label %150

112:                                              ; preds = %93
  %113 = load i32, i32* @create_mkey_in, align 4
  %114 = load i8**, i8*** %12, align 8
  %115 = load i32, i32* @memory_key_mkey_entry, align 4
  %116 = call i8* @MLX5_ADDR_OF(i32 %113, i8** %114, i32 %115)
  store i8* %116, i8** %16, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load i8*, i8** %16, align 8
  %119 = load i32, i32* @bsf_en, align 4
  %120 = call i32 @MLX5_SET(i8* %117, i8* %118, i32 %119, i32 1)
  %121 = load i8*, i8** %16, align 8
  %122 = load i8*, i8** %16, align 8
  %123 = load i32, i32* @bsf_octword_size, align 4
  %124 = load i32, i32* @MLX5_MKEY_BSF_OCTO_SIZE, align 4
  %125 = call i32 @MLX5_SET(i8* %121, i8* %122, i32 %123, i32 %124)
  %126 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %127 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %128 = load i32, i32* @MLX5_MKC_ACCESS_MODE_KLMS, align 4
  %129 = load i8**, i8*** %12, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @_mlx5_alloc_mkey_descs(%struct.ib_pd* %126, %struct.mlx5_ib_mr* %127, i32 4, i32 4, i32 0, i32 %128, i8** %129, i32 %130)
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %112
  br label %136

135:                                              ; preds = %112
  store i32 0, i32* %7, align 4
  br label %213

136:                                              ; preds = %134
  %137 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %138 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %137, i32 0, i32 2
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call %struct.mlx5_ib_dev* @to_mdev(i32 %142)
  %144 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %145 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %144, i32 0, i32 2
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = call i32 @dereg_mr(%struct.mlx5_ib_dev* %143, %struct.TYPE_15__* %146)
  %148 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %149 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %148, i32 0, i32 2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %149, align 8
  br label %150

150:                                              ; preds = %136, %107
  %151 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %152 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %151, i32 0, i32 1
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call %struct.mlx5_ib_dev* @to_mdev(i32 %156)
  %158 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %159 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %158, i32 0, i32 1
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = call i32 @dereg_mr(%struct.mlx5_ib_dev* %157, %struct.TYPE_15__* %160)
  %162 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %163 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %162, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %163, align 8
  br label %164

164:                                              ; preds = %150, %88
  %165 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %166 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %169 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %168, i32 0, i32 0
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i64 @mlx5_core_destroy_psv(i32 %167, i8* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %164
  %177 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %178 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %179 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %178, i32 0, i32 0
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %177, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %183)
  br label %185

185:                                              ; preds = %176, %164
  %186 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %187 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %190 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %189, i32 0, i32 0
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i64 @mlx5_core_destroy_psv(i32 %188, i8* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %185
  %198 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %14, align 8
  %199 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %200 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %199, i32 0, i32 0
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %198, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %204)
  br label %206

206:                                              ; preds = %197, %185
  br label %207

207:                                              ; preds = %206, %45
  %208 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %209 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %208, i32 0, i32 0
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %209, align 8
  %211 = call i32 @kfree(%struct.TYPE_14__* %210)
  %212 = load i32, i32* %17, align 4
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %207, %135, %30
  %214 = load i32, i32* %7, align 4
  ret i32 %214
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.TYPE_14__* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_core_create_psv(i32, i32, i32, i8**) #1

declare dso_local %struct.TYPE_13__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i8* @mlx5_ib_alloc_pi_mr(%struct.ib_pd*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_15__*) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8**, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @_mlx5_alloc_mkey_descs(%struct.ib_pd*, %struct.mlx5_ib_mr*, i32, i32, i32, i32, i8**, i32) #1

declare dso_local i32 @dereg_mr(%struct.mlx5_ib_dev*, %struct.TYPE_15__*) #1

declare dso_local i64 @mlx5_core_destroy_psv(i32, i8*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
