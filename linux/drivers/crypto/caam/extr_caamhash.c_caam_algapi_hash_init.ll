; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_caam_algapi_hash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_caam_algapi_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_hash_template = type { i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.device = type { i32 }
%struct.caam_drv_private = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.caam_hash_alg = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@CHA_ID_LS_MD_MASK = common dso_local global i32 0, align 4
@CHA_ID_LS_MD_SHIFT = common dso_local global i32 0, align 4
@CHA_VER_VID_MASK = common dso_local global i32 0, align 4
@CHA_VER_VID_SHIFT = common dso_local global i32 0, align 4
@CHA_VER_NUM_MASK = common dso_local global i32 0, align 4
@CHA_VER_VID_MD_LP256 = common dso_local global i32 0, align 4
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@hash_list = common dso_local global i32 0, align 4
@driver_hash = common dso_local global %struct.caam_hash_template* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"%s alg allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s alg registration failed: %d\0A\00", align 1
@OP_ALG_ALGSEL_MASK = common dso_local global i32 0, align 4
@OP_ALG_ALGSEL_AES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @caam_algapi_hash_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.caam_drv_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.caam_hash_alg*, align 8
  %12 = alloca %struct.caam_hash_template*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.caam_drv_private* @dev_get_drvdata(%struct.device* %13)
  store %struct.caam_drv_private* %14, %struct.caam_drv_private** %6, align 8
  %15 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.caam_drv_private*, %struct.caam_drv_private** %6, align 8
  %17 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %41

20:                                               ; preds = %1
  %21 = load %struct.caam_drv_private*, %struct.caam_drv_private** %6, align 8
  %22 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = call i32 @rd_reg32(i32* %25)
  %27 = load i32, i32* @CHA_ID_LS_MD_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @CHA_ID_LS_MD_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.caam_drv_private*, %struct.caam_drv_private** %6, align 8
  %32 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = call i32 @rd_reg32(i32* %35)
  %37 = load i32, i32* @CHA_ID_LS_MD_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @CHA_ID_LS_MD_SHIFT, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %8, align 4
  br label %56

41:                                               ; preds = %1
  %42 = load %struct.caam_drv_private*, %struct.caam_drv_private** %6, align 8
  %43 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = call i32 @rd_reg32(i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @CHA_VER_VID_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @CHA_VER_VID_SHIFT, align 4
  %52 = ashr i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @CHA_VER_NUM_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %41, %20
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %175

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @CHA_VER_VID_MD_LP256, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = call i32 @INIT_LIST_HEAD(i32* @hash_list)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %170, %66
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.caam_hash_template*, %struct.caam_hash_template** @driver_hash, align 8
  %71 = call i32 @ARRAY_SIZE(%struct.caam_hash_template* %70)
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %173

73:                                               ; preds = %68
  %74 = load %struct.caam_hash_template*, %struct.caam_hash_template** @driver_hash, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %74, i64 %76
  store %struct.caam_hash_template* %77, %struct.caam_hash_template** %12, align 8
  %78 = load %struct.caam_hash_template*, %struct.caam_hash_template** %12, align 8
  %79 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @is_mdha(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %73
  %84 = load %struct.caam_hash_template*, %struct.caam_hash_template** %12, align 8
  %85 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ugt i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %170

92:                                               ; preds = %83, %73
  %93 = load %struct.caam_hash_template*, %struct.caam_hash_template** %12, align 8
  %94 = call %struct.caam_hash_alg* @caam_hash_alloc(%struct.caam_hash_template* %93, i32 1)
  store %struct.caam_hash_alg* %94, %struct.caam_hash_alg** %11, align 8
  %95 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %11, align 8
  %96 = call i64 @IS_ERR(%struct.caam_hash_alg* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %11, align 8
  %100 = call i32 @PTR_ERR(%struct.caam_hash_alg* %99)
  store i32 %100, i32* %5, align 4
  %101 = load %struct.caam_hash_template*, %struct.caam_hash_template** %12, align 8
  %102 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %170

105:                                              ; preds = %92
  %106 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %11, align 8
  %107 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %106, i32 0, i32 1
  %108 = call i32 @crypto_register_ahash(%struct.TYPE_16__* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %11, align 8
  %113 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %11, align 8
  %121 = call i32 @kfree(%struct.caam_hash_alg* %120)
  br label %126

122:                                              ; preds = %105
  %123 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %11, align 8
  %124 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %123, i32 0, i32 0
  %125 = call i32 @list_add_tail(i32* %124, i32* @hash_list)
  br label %126

126:                                              ; preds = %122, %111
  %127 = load %struct.caam_hash_template*, %struct.caam_hash_template** %12, align 8
  %128 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @OP_ALG_ALGSEL_MASK, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* @OP_ALG_ALGSEL_AES, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %170

135:                                              ; preds = %126
  %136 = load %struct.caam_hash_template*, %struct.caam_hash_template** %12, align 8
  %137 = call %struct.caam_hash_alg* @caam_hash_alloc(%struct.caam_hash_template* %136, i32 0)
  store %struct.caam_hash_alg* %137, %struct.caam_hash_alg** %11, align 8
  %138 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %11, align 8
  %139 = call i64 @IS_ERR(%struct.caam_hash_alg* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %11, align 8
  %143 = call i32 @PTR_ERR(%struct.caam_hash_alg* %142)
  store i32 %143, i32* %5, align 4
  %144 = load %struct.caam_hash_template*, %struct.caam_hash_template** %12, align 8
  %145 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %146)
  br label %170

148:                                              ; preds = %135
  %149 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %11, align 8
  %150 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %149, i32 0, i32 1
  %151 = call i32 @crypto_register_ahash(%struct.TYPE_16__* %150)
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %148
  %155 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %11, align 8
  %156 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %160, i32 %161)
  %163 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %11, align 8
  %164 = call i32 @kfree(%struct.caam_hash_alg* %163)
  br label %169

165:                                              ; preds = %148
  %166 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %11, align 8
  %167 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %166, i32 0, i32 0
  %168 = call i32 @list_add_tail(i32* %167, i32* @hash_list)
  br label %169

169:                                              ; preds = %165, %154
  br label %170

170:                                              ; preds = %169, %141, %134, %98, %91
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %4, align 4
  br label %68

173:                                              ; preds = %68
  %174 = load i32, i32* %5, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %173, %59
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.caam_drv_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rd_reg32(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.caam_hash_template*) #1

declare dso_local i64 @is_mdha(i32) #1

declare dso_local %struct.caam_hash_alg* @caam_hash_alloc(%struct.caam_hash_template*, i32) #1

declare dso_local i64 @IS_ERR(%struct.caam_hash_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.caam_hash_alg*) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @crypto_register_ahash(%struct.TYPE_16__*) #1

declare dso_local i32 @kfree(%struct.caam_hash_alg*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
