; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a20s.c_mb86a20s_get_interleaving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a20s.c_mb86a20s_get_interleaving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a20s_state = type { i32 }

@__const.mb86a20s_get_interleaving.interleaving = private unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8], align 16
@mb86a20s_get_interleaving.reg = internal global [3 x i8] c"\88\8C\90", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb86a20s_state*, i32)* @mb86a20s_get_interleaving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb86a20s_get_interleaving(%struct.mb86a20s_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mb86a20s_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  store %struct.mb86a20s_state* %0, %struct.mb86a20s_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([5 x i32]* @__const.mb86a20s_get_interleaving.interleaving to i8*), i64 20, i1 false)
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mb86a20s_get_interleaving.reg, i64 0, i64 0))
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* @mb86a20s_get_interleaving.reg, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @mb86a20s_writereg(%struct.mb86a20s_state* %16, i32 109, i8 zeroext %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %40

26:                                               ; preds = %15
  %27 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %4, align 8
  %28 = call i32 @mb86a20s_readreg(%struct.mb86a20s_state* %27, i32 110)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %40

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, 4
  %36 = and i32 %35, 7
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %33, %31, %24, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @mb86a20s_writereg(%struct.mb86a20s_state*, i32, i8 zeroext) #2

declare dso_local i32 @mb86a20s_readreg(%struct.mb86a20s_state*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
