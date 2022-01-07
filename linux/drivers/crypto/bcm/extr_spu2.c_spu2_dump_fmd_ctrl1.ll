; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_dump_fmd_ctrl1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_dump_fmd_ctrl1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c" FMD CTRL1 %#16llx\0A\00", align 1
@SPU2_TAG_LOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"  Tag after payload\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"  Msg includes \00", align 1
@SPU2_HAS_FR_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"FD \00", align 1
@SPU2_HAS_AAD1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"AAD1 \00", align 1
@SPU2_HAS_NAAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"NAAD \00", align 1
@SPU2_HAS_AAD2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"AAD2 \00", align 1
@SPU2_HAS_ESN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"ESN \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SPU2_HASH_KEY_LEN = common dso_local global i32 0, align 4
@SPU2_HASH_KEY_LEN_SHIFT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"  Hash key len %u\0A\00", align 1
@SPU2_CIPH_KEY_LEN = common dso_local global i32 0, align 4
@SPU2_CIPH_KEY_LEN_SHIFT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"  Cipher key len %u\0A\00", align 1
@SPU2_GENIV = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"  Generate IV\0A\00", align 1
@SPU2_HASH_IV = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"  IV included in hash\0A\00", align 1
@SPU2_RET_IV = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"  Return IV in output before payload\0A\00", align 1
@SPU2_RET_IV_LEN = common dso_local global i32 0, align 4
@SPU2_RET_IV_LEN_SHIFT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"  Length of returned IV %u bytes\0A\00", align 1
@SPU2_IV_OFFSET = common dso_local global i32 0, align 4
@SPU2_IV_OFFSET_SHIFT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"  IV offset %u\0A\00", align 1
@SPU2_IV_LEN = common dso_local global i32 0, align 4
@SPU2_IV_LEN_SHIFT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"  Input IV len %u bytes\0A\00", align 1
@SPU2_HASH_TAG_LEN = common dso_local global i32 0, align 4
@SPU2_HASH_TAG_LEN_SHIFT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [28 x i8] c"  Hash tag length %u bytes\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"  Return \00", align 1
@SPU2_RETURN_MD = common dso_local global i32 0, align 4
@SPU2_RETURN_MD_SHIFT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"FMD \00", align 1
@SPU2_RET_FMD_OMD = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"OMD \00", align 1
@SPU2_RET_FMD_OMD_IV = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"OMD IV \00", align 1
@SPU2_RETURN_FD = common dso_local global i32 0, align 4
@SPU2_RETURN_AAD1 = common dso_local global i32 0, align 4
@SPU2_RETURN_NAAD = common dso_local global i32 0, align 4
@SPU2_RETURN_AAD2 = common dso_local global i32 0, align 4
@SPU2_RETURN_PAY = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"Payload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @spu2_dump_fmd_ctrl1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu2_dump_fmd_ctrl1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @SPU2_TAG_LOC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @SPU2_HAS_FR_DATA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @SPU2_HAS_AAD1, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @SPU2_HAS_NAAD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @SPU2_HAS_AAD2, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @SPU2_HAS_ESN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %47
  %55 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @SPU2_HASH_KEY_LEN, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @SPU2_HASH_KEY_LEN_SHIFT, align 4
  %60 = ashr i32 %58, %59
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @SPU2_CIPH_KEY_LEN, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @SPU2_CIPH_KEY_LEN_SHIFT, align 4
  %67 = ashr i32 %65, %66
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @SPU2_GENIV, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %54
  %75 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %54
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @SPU2_HASH_IV, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %76
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @SPU2_RET_IV, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %83
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* @SPU2_RET_IV_LEN, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @SPU2_RET_IV_LEN_SHIFT, align 4
  %95 = ashr i32 %93, %94
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %5, align 4
  br label %101

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 16, %100 ]
  %103 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* @SPU2_IV_OFFSET, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @SPU2_IV_OFFSET_SHIFT, align 4
  %108 = ashr i32 %106, %107
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @SPU2_IV_LEN, align 4
  %113 = and i32 %111, %112
  %114 = load i32, i32* @SPU2_IV_LEN_SHIFT, align 4
  %115 = ashr i32 %113, %114
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* @SPU2_HASH_TAG_LEN, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @SPU2_HASH_TAG_LEN_SHIFT, align 4
  %122 = ashr i32 %120, %121
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %123)
  %125 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* @SPU2_RETURN_MD, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* @SPU2_RETURN_MD_SHIFT, align 4
  %130 = ashr i32 %128, %129
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %101
  %134 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %101
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @SPU2_RET_FMD_OMD, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  br label %148

141:                                              ; preds = %135
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @SPU2_RET_FMD_OMD_IV, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %141
  br label %148

148:                                              ; preds = %147, %139
  %149 = load i32, i32* %2, align 4
  %150 = load i32, i32* @SPU2_RETURN_FD, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %148
  %156 = load i32, i32* %2, align 4
  %157 = load i32, i32* @SPU2_RETURN_AAD1, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %155
  %163 = load i32, i32* %2, align 4
  %164 = load i32, i32* @SPU2_RETURN_NAAD, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %162
  %170 = load i32, i32* %2, align 4
  %171 = load i32, i32* @SPU2_RETURN_AAD2, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %169
  %177 = load i32, i32* %2, align 4
  %178 = load i32, i32* @SPU2_RETURN_PAY, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %176
  %184 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @packet_log(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
