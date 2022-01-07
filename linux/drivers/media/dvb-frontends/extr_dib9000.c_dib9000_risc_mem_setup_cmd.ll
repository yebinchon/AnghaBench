; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_risc_mem_setup_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_risc_mem_setup_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib9000_state*, i32, i32, i32)* @dib9000_risc_mem_setup_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib9000_risc_mem_setup_cmd(%struct.dib9000_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dib9000_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [14 x i32], align 16
  store %struct.dib9000_state* %0, %struct.dib9000_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = bitcast [14 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 56, i1 false)
  %11 = getelementptr inbounds [14 x i32], [14 x i32]* %9, i64 0, i64 1
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 8
  %14 = getelementptr inbounds [14 x i32], [14 x i32]* %9, i64 0, i64 4
  store i32 %13, i32* %14, align 16
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 255
  %17 = getelementptr inbounds [14 x i32], [14 x i32]* %9, i64 0, i64 5
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 8
  %20 = getelementptr inbounds [14 x i32], [14 x i32]* %9, i64 0, i64 12
  store i32 %19, i32* %20, align 16
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds [14 x i32], [14 x i32]* %9, i64 0, i64 13
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 8
  %29 = getelementptr inbounds [14 x i32], [14 x i32]* %9, i64 0, i64 8
  store i32 %28, i32* %29, align 16
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds [14 x i32], [14 x i32]* %9, i64 0, i64 9
  store i32 %31, i32* %32, align 4
  %33 = load %struct.dib9000_state*, %struct.dib9000_state** %5, align 8
  %34 = getelementptr inbounds [14 x i32], [14 x i32]* %9, i64 0, i64 0
  %35 = call i32 @dib9000_write(%struct.dib9000_state* %33, i32 1056, i32* %34, i32 14)
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %4
  %39 = load %struct.dib9000_state*, %struct.dib9000_state** %5, align 8
  %40 = call i32 @dib9000_write_word(%struct.dib9000_state* %39, i32 1056, i32 32769)
  br label %41

41:                                               ; preds = %38, %4
  %42 = load %struct.dib9000_state*, %struct.dib9000_state** %5, align 8
  %43 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dib9000_write(%struct.dib9000_state*, i32, i32*, i32) #2

declare dso_local i32 @dib9000_write_word(%struct.dib9000_state*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
