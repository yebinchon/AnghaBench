; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_fec_decode_rs8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_fec_decode_rs8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dm_verity_fec_io = type { i32, i32 }

@DM_VERITY_FEC_RSM = common dso_local global i32 0, align 4
@DM_VERITY_FEC_MIN_RSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_verity*, %struct.dm_verity_fec_io*, i32*, i32*, i32)* @fec_decode_rs8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_decode_rs8(%struct.dm_verity* %0, %struct.dm_verity_fec_io* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.dm_verity*, align 8
  %7 = alloca %struct.dm_verity_fec_io*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.dm_verity* %0, %struct.dm_verity** %6, align 8
  store %struct.dm_verity_fec_io* %1, %struct.dm_verity_fec_io** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @DM_VERITY_FEC_RSM, align 4
  %15 = load i32, i32* @DM_VERITY_FEC_MIN_RSN, align 4
  %16 = sub nsw i32 %14, %15
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %37, %5
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %23 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %19, i64 %35
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %7, align 8
  %42 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %46 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %7, align 8
  %52 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @decode_rs8(i32 %43, i32* %44, i32* %19, i32 %49, i32* null, i32 %50, i32 %53, i32 0, i32* null)
  %55 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %55)
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @decode_rs8(i32, i32*, i32*, i32, i32*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
