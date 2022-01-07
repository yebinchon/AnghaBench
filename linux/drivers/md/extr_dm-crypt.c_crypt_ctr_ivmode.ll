; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_ctr_ivmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_ctr_ivmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, %struct.crypt_config* }
%struct.crypt_config = type { i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [37 x i8] c"Selected cipher does not support IVs\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@crypt_iv_plain_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"plain64\00", align 1
@crypt_iv_plain64_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"plain64be\00", align 1
@crypt_iv_plain64be_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"essiv\00", align 1
@crypt_iv_essiv_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"benbi\00", align 1
@crypt_iv_benbi_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@crypt_iv_null_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"eboiv\00", align 1
@crypt_iv_eboiv_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"lmk\00", align 1
@crypt_iv_lmk_ops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"tcw\00", align 1
@crypt_iv_tcw_ops = common dso_local global i32 0, align 4
@TCW_WHITENING_SIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@crypt_iv_random_ops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"Invalid IV mode\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i8*)* @crypt_ctr_ivmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_ctr_ivmode(%struct.dm_target* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.crypt_config*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 1
  %9 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  store %struct.crypt_config* %9, %struct.crypt_config** %6, align 8
  %10 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %11 = call i64 @crypt_integrity_aead(%struct.crypt_config* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %15 = call i32 @any_tfm_aead(%struct.crypt_config* %14)
  %16 = call i32 @crypto_aead_ivsize(i32 %15)
  %17 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %18 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %21 = call i32 @any_tfm(%struct.crypt_config* %20)
  %22 = call i32 @crypto_skcipher_ivsize(i32 %21)
  %23 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %24 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %19, %13
  %26 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %27 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %32 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @max(i32 %33, i32 1)
  %35 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %36 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %43

37:                                               ; preds = %25
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @DMWARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %42

42:                                               ; preds = %40, %37
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i8*, i8** %5, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %48 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %47, i32 0, i32 5
  store i32* null, i32** %48, align 8
  br label %173

49:                                               ; preds = %43
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %55 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %54, i32 0, i32 5
  store i32* @crypt_iv_plain_ops, i32** %55, align 8
  br label %172

56:                                               ; preds = %49
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %62 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %61, i32 0, i32 5
  store i32* @crypt_iv_plain64_ops, i32** %62, align 8
  br label %171

63:                                               ; preds = %56
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %69 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %68, i32 0, i32 5
  store i32* @crypt_iv_plain64be_ops, i32** %69, align 8
  br label %170

70:                                               ; preds = %63
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %76 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %75, i32 0, i32 5
  store i32* @crypt_iv_essiv_ops, i32** %76, align 8
  br label %169

77:                                               ; preds = %70
  %78 = load i8*, i8** %5, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %83 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %82, i32 0, i32 5
  store i32* @crypt_iv_benbi_ops, i32** %83, align 8
  br label %168

84:                                               ; preds = %77
  %85 = load i8*, i8** %5, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %90 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %89, i32 0, i32 5
  store i32* @crypt_iv_null_ops, i32** %90, align 8
  br label %167

91:                                               ; preds = %84
  %92 = load i8*, i8** %5, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %97 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %96, i32 0, i32 5
  store i32* @crypt_iv_eboiv_ops, i32** %97, align 8
  br label %166

98:                                               ; preds = %91
  %99 = load i8*, i8** %5, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %98
  %103 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %104 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %103, i32 0, i32 5
  store i32* @crypt_iv_lmk_ops, i32** %104, align 8
  %105 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %106 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %109 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = srem i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %102
  %114 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %115 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %119 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %122 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sdiv i32 %120, %123
  %125 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %126 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %113, %102
  br label %165

128:                                              ; preds = %98
  %129 = load i8*, i8** %5, align 8
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %128
  %133 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %134 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %133, i32 0, i32 5
  store i32* @crypt_iv_tcw_ops, i32** %134, align 8
  %135 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %136 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 2
  store i32 %138, i32* %136, align 8
  %139 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %140 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @TCW_WHITENING_SIZE, align 4
  %143 = add nsw i32 %141, %142
  %144 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %145 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  br label %164

146:                                              ; preds = %128
  %147 = load i8*, i8** %5, align 8
  %148 = call i64 @strcmp(i8* %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %146
  %151 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %152 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %151, i32 0, i32 5
  store i32* @crypt_iv_random_ops, i32** %152, align 8
  %153 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %154 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %157 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  br label %163

158:                                              ; preds = %146
  %159 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %160 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %159, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %160, align 8
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %174

163:                                              ; preds = %150
  br label %164

164:                                              ; preds = %163, %132
  br label %165

165:                                              ; preds = %164, %127
  br label %166

166:                                              ; preds = %165, %95
  br label %167

167:                                              ; preds = %166, %88
  br label %168

168:                                              ; preds = %167, %81
  br label %169

169:                                              ; preds = %168, %74
  br label %170

170:                                              ; preds = %169, %67
  br label %171

171:                                              ; preds = %170, %60
  br label %172

172:                                              ; preds = %171, %53
  br label %173

173:                                              ; preds = %172, %46
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %158
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i64 @crypt_integrity_aead(%struct.crypt_config*) #1

declare dso_local i32 @crypto_aead_ivsize(i32) #1

declare dso_local i32 @any_tfm_aead(%struct.crypt_config*) #1

declare dso_local i32 @crypto_skcipher_ivsize(i32) #1

declare dso_local i32 @any_tfm(%struct.crypt_config*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
