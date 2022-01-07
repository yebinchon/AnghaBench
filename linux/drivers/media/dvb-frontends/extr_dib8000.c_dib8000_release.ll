; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { %struct.dib8000_state**, i32, i32 }

@MAX_NUMBER_OF_FRONTENDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @dib8000_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_release(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  store %struct.dib8000_state* %7, %struct.dib8000_state** %3, align 8
  store i64 1, i64* %4, align 8
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %14 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %13, i32 0, i32 0
  %15 = load %struct.dib8000_state**, %struct.dib8000_state*** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.dib8000_state*, %struct.dib8000_state** %15, i64 %16
  %18 = load %struct.dib8000_state*, %struct.dib8000_state** %17, align 8
  %19 = icmp ne %struct.dib8000_state* %18, null
  br label %20

20:                                               ; preds = %12, %8
  %21 = phi i1 [ false, %8 ], [ %19, %12 ]
  br i1 %21, label %22, label %33

22:                                               ; preds = %20
  %23 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %24 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %23, i32 0, i32 0
  %25 = load %struct.dib8000_state**, %struct.dib8000_state*** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.dib8000_state*, %struct.dib8000_state** %25, i64 %26
  %28 = load %struct.dib8000_state*, %struct.dib8000_state** %27, align 8
  %29 = call i32 @dvb_frontend_detach(%struct.dib8000_state* %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %8

33:                                               ; preds = %20
  %34 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %35 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %34, i32 0, i32 2
  %36 = call i32 @dibx000_exit_i2c_master(i32* %35)
  %37 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %38 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %37, i32 0, i32 1
  %39 = call i32 @i2c_del_adapter(i32* %38)
  %40 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %41 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %40, i32 0, i32 0
  %42 = load %struct.dib8000_state**, %struct.dib8000_state*** %41, align 8
  %43 = getelementptr inbounds %struct.dib8000_state*, %struct.dib8000_state** %42, i64 0
  %44 = load %struct.dib8000_state*, %struct.dib8000_state** %43, align 8
  %45 = call i32 @kfree(%struct.dib8000_state* %44)
  %46 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %47 = call i32 @kfree(%struct.dib8000_state* %46)
  ret void
}

declare dso_local i32 @dvb_frontend_detach(%struct.dib8000_state*) #1

declare dso_local i32 @dibx000_exit_i2c_master(i32*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.dib8000_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
