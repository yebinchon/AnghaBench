; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_gp8psk-fe.c_gp8psk_fe_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_gp8psk-fe.c_gp8psk_fe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.gp8psk_fe_state*, i32 }
%struct.gp8psk_fe_state = type { i32, %struct.dvb_frontend, i8*, %struct.gp8psk_fe_ops* }
%struct.gp8psk_fe_ops = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Error! gp8psk-fe ops not defined.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@gp8psk_fe_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Frontend %sattached\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"revision 1 \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @gp8psk_fe_attach(%struct.gp8psk_fe_ops* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.gp8psk_fe_ops*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gp8psk_fe_state*, align 8
  store %struct.gp8psk_fe_ops* %0, %struct.gp8psk_fe_ops** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.gp8psk_fe_ops*, %struct.gp8psk_fe_ops** %5, align 8
  %10 = icmp ne %struct.gp8psk_fe_ops* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load %struct.gp8psk_fe_ops*, %struct.gp8psk_fe_ops** %5, align 8
  %13 = getelementptr inbounds %struct.gp8psk_fe_ops, %struct.gp8psk_fe_ops* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.gp8psk_fe_ops*, %struct.gp8psk_fe_ops** %5, align 8
  %18 = getelementptr inbounds %struct.gp8psk_fe_ops, %struct.gp8psk_fe_ops* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.gp8psk_fe_ops*, %struct.gp8psk_fe_ops** %5, align 8
  %23 = getelementptr inbounds %struct.gp8psk_fe_ops, %struct.gp8psk_fe_ops* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21, %16, %11, %3
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %59

28:                                               ; preds = %21
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.gp8psk_fe_state* @kzalloc(i32 40, i32 %29)
  store %struct.gp8psk_fe_state* %30, %struct.gp8psk_fe_state** %8, align 8
  %31 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %8, align 8
  %32 = icmp ne %struct.gp8psk_fe_state* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %59

34:                                               ; preds = %28
  %35 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %8, align 8
  %36 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 1
  %38 = call i32 @memcpy(i32* %37, i32* @gp8psk_fe_ops, i32 4)
  %39 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %8, align 8
  %40 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %8, align 8
  %41 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 0
  store %struct.gp8psk_fe_state* %39, %struct.gp8psk_fe_state** %42, align 8
  %43 = load %struct.gp8psk_fe_ops*, %struct.gp8psk_fe_ops** %5, align 8
  %44 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %8, align 8
  %45 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %44, i32 0, i32 3
  store %struct.gp8psk_fe_ops* %43, %struct.gp8psk_fe_ops** %45, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %8, align 8
  %48 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %8, align 8
  %51 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %8, align 8
  %58 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %57, i32 0, i32 1
  store %struct.dvb_frontend* %58, %struct.dvb_frontend** %4, align 8
  br label %59

59:                                               ; preds = %34, %33, %26
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %60
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.gp8psk_fe_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
