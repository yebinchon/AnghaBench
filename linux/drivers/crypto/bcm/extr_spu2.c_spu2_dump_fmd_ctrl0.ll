; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_dump_fmd_ctrl0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_dump_fmd_ctrl0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c" FMD CTRL0 %#16llx\0A\00", align 1
@SPU2_CIPH_ENCRYPT_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"  encrypt\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"  decrypt\0A\00", align 1
@SPU2_CIPH_TYPE = common dso_local global i32 0, align 4
@SPU2_CIPH_TYPE_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"  Cipher type: %s\0A\00", align 1
@SPU2_CIPHER_TYPE_NONE = common dso_local global i32 0, align 4
@SPU2_CIPH_MODE = common dso_local global i32 0, align 4
@SPU2_CIPH_MODE_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"  Cipher mode: %s\0A\00", align 1
@SPU2_CFB_MASK = common dso_local global i32 0, align 4
@SPU2_CFB_MASK_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"  CFB %#x\0A\00", align 1
@SPU2_PROTO_SEL = common dso_local global i32 0, align 4
@SPU2_PROTO_SEL_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"  protocol %#x\0A\00", align 1
@SPU2_HASH_FIRST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"  hash first\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"  cipher first\0A\00", align 1
@SPU2_CHK_TAG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"  check tag\0A\00", align 1
@SPU2_HASH_TYPE = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_SHIFT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"  Hash type: %s\0A\00", align 1
@SPU2_HASH_TYPE_NONE = common dso_local global i32 0, align 4
@SPU2_HASH_MODE = common dso_local global i32 0, align 4
@SPU2_HASH_MODE_SHIFT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"  Hash mode: %s\0A\00", align 1
@SPU2_CIPH_PAD_EN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"  Cipher pad: %#2llx\0A\00", align 1
@SPU2_CIPH_PAD = common dso_local global i32 0, align 4
@SPU2_CIPH_PAD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @spu2_dump_fmd_ctrl0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu2_dump_fmd_ctrl0(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @SPU2_CIPH_ENCRYPT_EN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %23

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @SPU2_CIPH_TYPE, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @SPU2_CIPH_TYPE_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i8* @spu2_ciph_type_name(i32 %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SPU2_CIPHER_TYPE_NONE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %23
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @SPU2_CIPH_MODE, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @SPU2_CIPH_MODE_SHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i8* @spu2_ciph_mode_name(i32 %42)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %36, %23
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @SPU2_CFB_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @SPU2_CFB_MASK_SHIFT, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @SPU2_PROTO_SEL, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @SPU2_PROTO_SEL_SHIFT, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @SPU2_HASH_FIRST, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %46
  %66 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %69

67:                                               ; preds = %46
  %68 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %65
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @SPU2_CHK_TAG, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @SPU2_HASH_TYPE, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @SPU2_HASH_TYPE_SHIFT, align 4
  %81 = ashr i32 %79, %80
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i8* @spu2_hash_type_name(i32 %82)
  store i8* %83, i8** %9, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %84)
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @SPU2_HASH_TYPE_NONE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %76
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* @SPU2_HASH_MODE, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @SPU2_HASH_MODE_SHIFT, align 4
  %94 = ashr i32 %92, %93
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i8* @spu2_hash_mode_name(i32 %95)
  store i8* %96, i8** %10, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %89, %76
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @SPU2_CIPH_PAD_EN, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @SPU2_CIPH_PAD, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @SPU2_CIPH_PAD_SHIFT, align 4
  %109 = ashr i32 %107, %108
  %110 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %104, %99
  ret void
}

declare dso_local i32 @packet_log(i8*, ...) #1

declare dso_local i8* @spu2_ciph_type_name(i32) #1

declare dso_local i8* @spu2_ciph_mode_name(i32) #1

declare dso_local i8* @spu2_hash_type_name(i32) #1

declare dso_local i8* @spu2_hash_mode_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
