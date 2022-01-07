; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_set_pls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_set_pls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i32, i64 }

@RSTV0910_P2_PLROOT0 = common dso_local global i64 0, align 8
@RSTV0910_P2_PLROOT1 = common dso_local global i64 0, align 8
@RSTV0910_P2_PLROOT2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv*, i32)* @set_pls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pls(%struct.stv* %0, i32 %1) #0 {
  %3 = alloca %struct.stv*, align 8
  %4 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.stv*, %struct.stv** %3, align 8
  %7 = getelementptr inbounds %struct.stv, %struct.stv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %45

11:                                               ; preds = %2
  %12 = load %struct.stv*, %struct.stv** %3, align 8
  %13 = load i64, i64* @RSTV0910_P2_PLROOT0, align 8
  %14 = load %struct.stv*, %struct.stv** %3, align 8
  %15 = getelementptr inbounds %struct.stv, %struct.stv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 255
  %20 = call i32 @write_reg(%struct.stv* %12, i64 %17, i32 %19)
  %21 = load %struct.stv*, %struct.stv** %3, align 8
  %22 = load i64, i64* @RSTV0910_P2_PLROOT1, align 8
  %23 = load %struct.stv*, %struct.stv** %3, align 8
  %24 = getelementptr inbounds %struct.stv, %struct.stv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = call i32 @write_reg(%struct.stv* %21, i64 %26, i32 %29)
  %31 = load %struct.stv*, %struct.stv** %3, align 8
  %32 = load i64, i64* @RSTV0910_P2_PLROOT2, align 8
  %33 = load %struct.stv*, %struct.stv** %3, align 8
  %34 = getelementptr inbounds %struct.stv, %struct.stv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 3
  %40 = or i32 4, %39
  %41 = call i32 @write_reg(%struct.stv* %31, i64 %36, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.stv*, %struct.stv** %3, align 8
  %44 = getelementptr inbounds %struct.stv, %struct.stv* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @write_reg(%struct.stv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
