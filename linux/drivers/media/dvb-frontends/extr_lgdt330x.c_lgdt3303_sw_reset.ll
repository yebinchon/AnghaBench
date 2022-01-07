; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt330x.c_lgdt3303_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt330x.c_lgdt3303_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt330x_state = type { i32 }

@__const.lgdt3303_sw_reset.reset = private unnamed_addr constant [2 x i32] [i32 2, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt330x_state*)* @lgdt3303_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3303_sw_reset(%struct.lgdt330x_state* %0) #0 {
  %2 = alloca %struct.lgdt330x_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  store %struct.lgdt330x_state* %0, %struct.lgdt330x_state** %2, align 8
  %5 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast ([2 x i32]* @__const.lgdt3303_sw_reset.reset to i8*), i64 8, i1 false)
  %6 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %2, align 8
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %8 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %6, i32* %7, i32 8)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 1, i32* %12, align 4
  %13 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %2, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %15 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %13, i32* %14, i32 8)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_write_demod_bytes(%struct.lgdt330x_state*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
