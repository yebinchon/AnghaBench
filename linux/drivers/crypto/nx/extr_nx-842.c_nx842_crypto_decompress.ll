; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842.c_nx842_crypto_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842.c_nx842_crypto_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.nx842_crypto_ctx = type { i32, %struct.nx842_crypto_header, %struct.TYPE_2__* }
%struct.nx842_crypto_header = type { i32, %struct.nx842_crypto_header_group*, i32, i32 }
%struct.nx842_crypto_header_group = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.nx842_constraints* }
%struct.nx842_constraints = type { i32 }
%struct.nx842_crypto_param = type { i32, i32, i32, i32*, i32* }

@NX842_CRYPTO_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"header has no groups\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NX842_CRYPTO_GROUP_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"header has too many groups %x, max %x\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"decompress total slen %x dlen %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nx842_crypto_decompress(%struct.crypto_tfm* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nx842_crypto_ctx*, align 8
  %12 = alloca %struct.nx842_crypto_header*, align 8
  %13 = alloca %struct.nx842_crypto_param, align 8
  %14 = alloca %struct.nx842_constraints, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.nx842_crypto_header_group, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %21 = call %struct.nx842_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %20)
  store %struct.nx842_crypto_ctx* %21, %struct.nx842_crypto_ctx** %11, align 8
  %22 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %11, align 8
  %23 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.nx842_constraints*, %struct.nx842_constraints** %25, align 8
  %27 = bitcast %struct.nx842_constraints* %14 to i8*
  %28 = bitcast %struct.nx842_constraints* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  store i64 0, i64* %18, align 8
  %29 = call i32 @check_constraints(%struct.nx842_constraints* %14)
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %13, i32 0, i32 4
  store i32* %30, i32** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %13, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %13, i32 0, i32 3
  store i32* %34, i32** %35, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %13, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %13, i32 0, i32 2
  store i32 0, i32* %39, align 8
  %40 = load i32*, i32** %10, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = bitcast i32* %41 to %struct.nx842_crypto_header*
  store %struct.nx842_crypto_header* %42, %struct.nx842_crypto_header** %12, align 8
  %43 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %11, align 8
  %44 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_bh(i32* %44)
  %46 = load %struct.nx842_crypto_header*, %struct.nx842_crypto_header** %12, align 8
  %47 = getelementptr inbounds %struct.nx842_crypto_header, %struct.nx842_crypto_header* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @be16_to_cpu(i32 %48)
  %50 = load i64, i64* @NX842_CRYPTO_MAGIC, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %5
  %53 = getelementptr inbounds %struct.nx842_crypto_header_group, %struct.nx842_crypto_header_group* %19, i32 0, i32 0
  %54 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %13, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cpu_to_be32(i32 %55)
  store i32 %56, i32* %53, align 4
  %57 = getelementptr inbounds %struct.nx842_crypto_header_group, %struct.nx842_crypto_header_group* %19, i32 0, i32 1
  %58 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %13, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @cpu_to_be32(i32 %59)
  store i32 %60, i32* %57, align 4
  %61 = getelementptr inbounds %struct.nx842_crypto_header_group, %struct.nx842_crypto_header_group* %19, i32 0, i32 2
  store i32 0, i32* %61, align 4
  %62 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %11, align 8
  %63 = call i32 @decompress(%struct.nx842_crypto_ctx* %62, %struct.nx842_crypto_param* %13, %struct.nx842_crypto_header_group* %19, %struct.nx842_constraints* %14, i64 0)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %154

67:                                               ; preds = %52
  br label %146

68:                                               ; preds = %5
  %69 = load %struct.nx842_crypto_header*, %struct.nx842_crypto_header** %12, align 8
  %70 = getelementptr inbounds %struct.nx842_crypto_header, %struct.nx842_crypto_header* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %16, align 4
  br label %154

77:                                               ; preds = %68
  %78 = load %struct.nx842_crypto_header*, %struct.nx842_crypto_header** %12, align 8
  %79 = getelementptr inbounds %struct.nx842_crypto_header, %struct.nx842_crypto_header* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @NX842_CRYPTO_GROUP_MAX, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.nx842_crypto_header*, %struct.nx842_crypto_header** %12, align 8
  %85 = getelementptr inbounds %struct.nx842_crypto_header, %struct.nx842_crypto_header* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @NX842_CRYPTO_GROUP_MAX, align 4
  %88 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %16, align 4
  br label %154

91:                                               ; preds = %77
  %92 = load %struct.nx842_crypto_header*, %struct.nx842_crypto_header** %12, align 8
  %93 = getelementptr inbounds %struct.nx842_crypto_header, %struct.nx842_crypto_header* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @NX842_CRYPTO_HEADER_SIZE(i32 %94)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ugt i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* @EOVERFLOW, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %16, align 4
  br label %154

102:                                              ; preds = %91
  %103 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %11, align 8
  %104 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %103, i32 0, i32 1
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @memcpy(%struct.nx842_crypto_header* %104, i32* %105, i32 %106)
  %108 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %11, align 8
  %109 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %108, i32 0, i32 1
  store %struct.nx842_crypto_header* %109, %struct.nx842_crypto_header** %12, align 8
  store i32 0, i32* %15, align 4
  br label %110

110:                                              ; preds = %142, %102
  %111 = load i32, i32* %15, align 4
  %112 = load %struct.nx842_crypto_header*, %struct.nx842_crypto_header** %12, align 8
  %113 = getelementptr inbounds %struct.nx842_crypto_header, %struct.nx842_crypto_header* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %145

116:                                              ; preds = %110
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  %119 = load %struct.nx842_crypto_header*, %struct.nx842_crypto_header** %12, align 8
  %120 = getelementptr inbounds %struct.nx842_crypto_header, %struct.nx842_crypto_header* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load %struct.nx842_crypto_header*, %struct.nx842_crypto_header** %12, align 8
  %125 = getelementptr inbounds %struct.nx842_crypto_header, %struct.nx842_crypto_header* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @be16_to_cpu(i32 %126)
  store i64 %127, i64* %18, align 8
  br label %128

128:                                              ; preds = %123, %116
  %129 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %11, align 8
  %130 = load %struct.nx842_crypto_header*, %struct.nx842_crypto_header** %12, align 8
  %131 = getelementptr inbounds %struct.nx842_crypto_header, %struct.nx842_crypto_header* %130, i32 0, i32 1
  %132 = load %struct.nx842_crypto_header_group*, %struct.nx842_crypto_header_group** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.nx842_crypto_header_group, %struct.nx842_crypto_header_group* %132, i64 %134
  %136 = load i64, i64* %18, align 8
  %137 = call i32 @decompress(%struct.nx842_crypto_ctx* %129, %struct.nx842_crypto_param* %13, %struct.nx842_crypto_header_group* %135, %struct.nx842_constraints* %14, i64 %136)
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  br label %154

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  br label %110

145:                                              ; preds = %110
  br label %146

146:                                              ; preds = %145, %67
  %147 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %13, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32*, i32** %10, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %150, i32 %152)
  store i32 0, i32* %16, align 4
  br label %154

154:                                              ; preds = %146, %140, %99, %83, %73, %66
  %155 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %11, align 8
  %156 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %155, i32 0, i32 0
  %157 = call i32 @spin_unlock_bh(i32* %156)
  %158 = load i32, i32* %16, align 4
  ret i32 %158
}

declare dso_local %struct.nx842_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @check_constraints(%struct.nx842_constraints*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @decompress(%struct.nx842_crypto_ctx*, %struct.nx842_crypto_param*, %struct.nx842_crypto_header_group*, %struct.nx842_constraints*, i64) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @NX842_CRYPTO_HEADER_SIZE(i32) #1

declare dso_local i32 @memcpy(%struct.nx842_crypto_header*, i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
