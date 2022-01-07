; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_jornada680_kbd.c_jornada_scan_keyb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_jornada680_kbd.c_jornada_scan_keyb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.jornada_scan_keyb.matrix_switch = private unnamed_addr constant [16 x i8] c"\FD\FF\DF\FF\7F\FF\FF\FE\FF\FD\FF\F7\FF\BF\FF\7F", align 16
@__const.jornada_scan_keyb.matrix_PDE = private unnamed_addr constant [16 x i16] [i16 -13308, i16 -3889, i16 -15348, i16 -3889, i16 19468, i16 -3889, i16 -13300, i16 -3891, i16 -13300, i16 -3897, i16 -13300, i16 -4017, i16 -13300, i16 -12081, i16 -13300, i16 28879], align 16
@PDCR = common dso_local global i32 0, align 4
@PECR = common dso_local global i32 0, align 4
@PDDR = common dso_local global i32 0, align 4
@PEDR = common dso_local global i32 0, align 4
@PCDR = common dso_local global i32 0, align 4
@PFDR = common dso_local global i32 0, align 4
@PGDR = common dso_local global i32 0, align 4
@PHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @jornada_scan_keyb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jornada_scan_keyb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca [16 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [16 x i16], align 16
  %9 = alloca i16*, align 8
  store i8* %0, i8** %2, align 8
  %10 = bitcast [16 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.jornada_scan_keyb.matrix_switch, i32 0, i32 0), i64 16, i1 false)
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  store i8* %11, i8** %7, align 8
  %12 = bitcast [16 x i16]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([16 x i16]* @__const.jornada_scan_keyb.matrix_PDE to i8*), i64 32, i1 false)
  %13 = getelementptr inbounds [16 x i16], [16 x i16]* %8, i64 0, i64 0
  store i16* %13, i16** %9, align 8
  %14 = load i32, i32* @PDCR, align 4
  %15 = call i32 @__raw_readw(i32 %14)
  %16 = and i32 %15, -52237
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %5, align 2
  %18 = load i32, i32* @PECR, align 4
  %19 = call i32 @__raw_readw(i32 %18)
  %20 = and i32 %19, -61648
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %4, align 2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %70, %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %73

25:                                               ; preds = %22
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16*, i16** %9, align 8
  %29 = getelementptr inbounds i16, i16* %28, i32 1
  store i16* %29, i16** %9, align 8
  %30 = load i16, i16* %28, align 2
  %31 = zext i16 %30 to i32
  %32 = or i32 %27, %31
  %33 = trunc i32 %32 to i16
  %34 = load i32, i32* @PDCR, align 4
  %35 = call i32 @__raw_writew(i16 zeroext %33, i32 %34)
  %36 = load i16, i16* %4, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16*, i16** %9, align 8
  %39 = getelementptr inbounds i16, i16* %38, i32 1
  store i16* %39, i16** %9, align 8
  %40 = load i16, i16* %38, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %37, %41
  %43 = trunc i32 %42 to i16
  %44 = load i32, i32* @PECR, align 4
  %45 = call i32 @__raw_writew(i16 zeroext %43, i32 %44)
  %46 = call i32 @udelay(i32 5)
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  %49 = load i8, i8* %47, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32, i32* @PDDR, align 4
  %52 = call i32 @__raw_writeb(i32 %50, i32 %51)
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  %55 = load i8, i8* %53, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, i32* @PEDR, align 4
  %58 = call i32 @__raw_writeb(i32 %56, i32 %57)
  %59 = call i32 @udelay(i32 50)
  %60 = load i32, i32* @PCDR, align 4
  %61 = call i8* @__raw_readb(i32 %60)
  %62 = ptrtoint i8* %61 to i8
  %63 = load i8*, i8** %2, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %2, align 8
  store i8 %62, i8* %63, align 1
  %65 = load i32, i32* @PFDR, align 4
  %66 = call i8* @__raw_readb(i32 %65)
  %67 = ptrtoint i8* %66 to i8
  %68 = load i8*, i8** %2, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %2, align 8
  store i8 %67, i8* %68, align 1
  br label %70

70:                                               ; preds = %25
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %22

73:                                               ; preds = %22
  %74 = load i32, i32* @PDDR, align 4
  %75 = call i32 @__raw_writeb(i32 255, i32 %74)
  %76 = load i32, i32* @PEDR, align 4
  %77 = call i32 @__raw_writeb(i32 255, i32 %76)
  %78 = load i16, i16* %5, align 2
  %79 = zext i16 %78 to i32
  %80 = or i32 %79, 17412
  %81 = trunc i32 %80 to i16
  %82 = load i32, i32* @PDCR, align 4
  %83 = call i32 @__raw_writew(i16 zeroext %81, i32 %82)
  %84 = load i16, i16* %4, align 2
  %85 = zext i16 %84 to i32
  %86 = or i32 %85, 20549
  %87 = trunc i32 %86 to i16
  %88 = load i32, i32* @PECR, align 4
  %89 = call i32 @__raw_writew(i16 zeroext %87, i32 %88)
  %90 = load i32, i32* @PGDR, align 4
  %91 = call i8* @__raw_readb(i32 %90)
  %92 = ptrtoint i8* %91 to i8
  %93 = load i8*, i8** %2, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %2, align 8
  store i8 %92, i8* %93, align 1
  %95 = load i32, i32* @PHDR, align 4
  %96 = call i8* @__raw_readb(i32 %95)
  %97 = ptrtoint i8* %96 to i8
  %98 = load i8*, i8** %2, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %2, align 8
  store i8 %97, i8* %98, align 1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__raw_readw(i32) #2

declare dso_local i32 @__raw_writew(i16 zeroext, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @__raw_writeb(i32, i32) #2

declare dso_local i8* @__raw_readb(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
