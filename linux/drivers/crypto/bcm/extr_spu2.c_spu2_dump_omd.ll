; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_dump_omd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_dump_omd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c" OMD:\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"  Hash Key Length %u bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"  KEY: \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"  Cipher Key Length %u bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"  Hash IV Length %u bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"  hash IV: \00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"  Cipher IV Length %u bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"  cipher IV: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @spu2_dump_omd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu2_dump_omd(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %11, align 8
  %13 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @packet_dump(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %11, align 8
  br label %26

26:                                               ; preds = %16, %5
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @packet_dump(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %11, align 8
  br label %39

39:                                               ; preds = %29, %26
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @packet_dump(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %11, align 8
  br label %52

52:                                               ; preds = %42, %39
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i8*, ...) @packet_log(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @packet_dump(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @packet_log(i8*, ...) #1

declare dso_local i32 @packet_dump(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
