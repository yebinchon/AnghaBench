; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_l64781.c_reset_and_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_l64781.c_reset_and_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l64781_state = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@__const.reset_and_configure.buf = private unnamed_addr constant [1 x i32] [i32 6], align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l64781_state*)* @reset_and_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_and_configure(%struct.l64781_state* %0) #0 {
  %2 = alloca %struct.l64781_state*, align 8
  %3 = alloca [1 x i32], align 4
  %4 = alloca %struct.i2c_msg, align 8
  store %struct.l64781_state* %0, %struct.l64781_state** %2, align 8
  %5 = bitcast [1 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast ([1 x i32]* @__const.reset_and_configure.buf to i8*), i64 4, i1 false)
  %6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 1
  %8 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  store i32* %8, i32** %7, align 8
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 2
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 3
  store i32 0, i32* %10, align 4
  %11 = load %struct.l64781_state*, %struct.l64781_state** %2, align 8
  %12 = getelementptr inbounds %struct.l64781_state, %struct.l64781_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @i2c_transfer(i32 %13, %struct.i2c_msg* %4, i32 1)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i32 [ 0, %16 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
