; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_as102_fe.c_as102_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_as102_fe.c_as102_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.as102_state* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.as102_state = type { i32, i8*, %struct.as102_fe_ops*, %struct.dvb_frontend }
%struct.as102_fe_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@as102_fe_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @as102_attach(i8* %0, %struct.as102_fe_ops* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.as102_fe_ops*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.as102_state*, align 8
  %11 = alloca %struct.dvb_frontend*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.as102_fe_ops* %1, %struct.as102_fe_ops** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.as102_state* @kzalloc(i32 40, i32 %12)
  store %struct.as102_state* %13, %struct.as102_state** %10, align 8
  %14 = load %struct.as102_state*, %struct.as102_state** %10, align 8
  %15 = icmp ne %struct.as102_state* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %5, align 8
  br label %43

17:                                               ; preds = %4
  %18 = load %struct.as102_state*, %struct.as102_state** %10, align 8
  %19 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %18, i32 0, i32 3
  store %struct.dvb_frontend* %19, %struct.dvb_frontend** %11, align 8
  %20 = load %struct.as102_state*, %struct.as102_state** %10, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %11, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 1
  store %struct.as102_state* %20, %struct.as102_state** %22, align 8
  %23 = load %struct.as102_fe_ops*, %struct.as102_fe_ops** %7, align 8
  %24 = load %struct.as102_state*, %struct.as102_state** %10, align 8
  %25 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %24, i32 0, i32 2
  store %struct.as102_fe_ops* %23, %struct.as102_fe_ops** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.as102_state*, %struct.as102_state** %10, align 8
  %28 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.as102_state*, %struct.as102_state** %10, align 8
  %31 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %11, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %32, i32 0, i32 0
  %34 = call i32 @memcpy(%struct.TYPE_4__* %33, i32* @as102_fe_ops, i32 4)
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %11, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strscpy(i32 %39, i8* %40, i32 4)
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %11, align 8
  store %struct.dvb_frontend* %42, %struct.dvb_frontend** %5, align 8
  br label %43

43:                                               ; preds = %17, %16
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  ret %struct.dvb_frontend* %44
}

declare dso_local %struct.as102_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
