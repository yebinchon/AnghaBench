; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_dump_msg_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_dump_msg_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SPU2_FMD = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"SPU2 message header %p len: %u\0A\00", align 1
@SPU2_HASH_KEY_LEN = common dso_local global i32 0, align 4
@SPU2_HASH_KEY_LEN_SHIFT = common dso_local global i32 0, align 4
@SPU2_CIPH_KEY_LEN = common dso_local global i32 0, align 4
@SPU2_CIPH_KEY_LEN_SHIFT = common dso_local global i32 0, align 4
@SPU2_IV_LEN = common dso_local global i32 0, align 4
@SPU2_IV_LEN_SHIFT = common dso_local global i32 0, align 4
@FMD_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c" Packet parsed incorrectly. buf_len %u, sum of MD %zu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spu2_dump_msg_hdr(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.SPU2_FMD*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = bitcast i32* %13 to %struct.SPU2_FMD*
  store %struct.SPU2_FMD* %14, %struct.SPU2_FMD** %5, align 8
  %15 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %16, i32 %17)
  %19 = load %struct.SPU2_FMD*, %struct.SPU2_FMD** %5, align 8
  %20 = call i32 @spu2_dump_fmd(%struct.SPU2_FMD* %19)
  %21 = load %struct.SPU2_FMD*, %struct.SPU2_FMD** %5, align 8
  %22 = getelementptr inbounds %struct.SPU2_FMD, %struct.SPU2_FMD* %21, i64 1
  %23 = bitcast %struct.SPU2_FMD* %22 to i32*
  store i32* %23, i32** %6, align 8
  %24 = load %struct.SPU2_FMD*, %struct.SPU2_FMD** %5, align 8
  %25 = getelementptr inbounds %struct.SPU2_FMD, %struct.SPU2_FMD* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le64_to_cpu(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SPU2_HASH_KEY_LEN, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @SPU2_HASH_KEY_LEN_SHIFT, align 4
  %32 = lshr i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SPU2_CIPH_KEY_LEN, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @SPU2_CIPH_KEY_LEN_SHIFT, align 4
  %37 = lshr i32 %35, %36
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SPU2_IV_LEN, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @SPU2_IV_LEN_SHIFT, align 4
  %42 = lshr i32 %40, %41
  store i32 %42, i32* %11, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @spu2_dump_omd(i32* %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %51, %52
  %54 = load i32, i32* %11, align 4
  %55 = add i32 %53, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* @FMD_SIZE, align 4
  %57 = load i32, i32* %12, align 4
  %58 = add i32 %56, %57
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %2
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @FMD_SIZE, align 4
  %64 = load i32, i32* %12, align 4
  %65 = add i32 %63, %64
  %66 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %2
  %68 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @packet_log(i8*, ...) #1

declare dso_local i32 @spu2_dump_fmd(%struct.SPU2_FMD*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @spu2_dump_omd(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
