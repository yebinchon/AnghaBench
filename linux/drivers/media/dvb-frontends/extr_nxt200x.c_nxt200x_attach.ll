; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt200x.c_nxt200x_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt200x.c_nxt200x_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.nxt200x_state*, i32 }
%struct.nxt200x_state = type { i32, %struct.dvb_frontend, i64, %struct.i2c_adapter*, %struct.nxt200x_config* }
%struct.nxt200x_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"NXT info: %*ph\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"NXT2002 Detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"NXT2004 Detected\0A\00", align 1
@nxt200x_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unknown/Unsupported NXT chip: %*ph\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @nxt200x_attach(%struct.nxt200x_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.nxt200x_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.nxt200x_state*, align 8
  %7 = alloca [5 x i32], align 16
  store %struct.nxt200x_config* %0, %struct.nxt200x_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.nxt200x_state* null, %struct.nxt200x_state** %6, align 8
  %8 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 20, i1 false)
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nxt200x_state* @kzalloc(i32 48, i32 %9)
  store %struct.nxt200x_state* %10, %struct.nxt200x_state** %6, align 8
  %11 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %12 = icmp eq %struct.nxt200x_state* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %87

14:                                               ; preds = %2
  %15 = load %struct.nxt200x_config*, %struct.nxt200x_config** %4, align 8
  %16 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %17 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %16, i32 0, i32 4
  store %struct.nxt200x_config* %15, %struct.nxt200x_config** %17, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %19 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %20 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %19, i32 0, i32 3
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %20, align 8
  %21 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %22 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %25 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %23, i32 0, i32* %24, i32 5)
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %27 = call i32 @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 5, i32* %26)
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %29 = load i32, i32* %28, align 16
  switch i32 %29, label %38 [
    i32 4, label %30
    i32 5, label %34
  ]

30:                                               ; preds = %14
  %31 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %32 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %31, i32 0, i32 0
  store i32 129, i32* %32, align 8
  %33 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %39

34:                                               ; preds = %14
  %35 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %36 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %35, i32 0, i32 0
  store i32 128, i32* %36, align 8
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %39

38:                                               ; preds = %14
  br label %87

39:                                               ; preds = %34, %30
  %40 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %41 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %75 [
    i32 129, label %43
    i32 128, label %69
  ]

43:                                               ; preds = %39
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %45 = load i32, i32* %44, align 16
  %46 = icmp ne i32 %45, 4
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %87

48:                                               ; preds = %43
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 2
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %87

53:                                               ; preds = %48
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 17
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %87

58:                                               ; preds = %53
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 32
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %87

63:                                               ; preds = %58
  %64 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %65 = load i32, i32* %64, align 16
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %87

68:                                               ; preds = %63
  br label %76

69:                                               ; preds = %39
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = icmp ne i32 %71, 5
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %87

74:                                               ; preds = %69
  br label %76

75:                                               ; preds = %39
  br label %87

76:                                               ; preds = %74, %68
  %77 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %78 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %78, i32 0, i32 1
  %80 = call i32 @memcpy(i32* %79, i32* @nxt200x_ops, i32 4)
  %81 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %82 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %83 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %83, i32 0, i32 0
  store %struct.nxt200x_state* %81, %struct.nxt200x_state** %84, align 8
  %85 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %86 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %85, i32 0, i32 1
  store %struct.dvb_frontend* %86, %struct.dvb_frontend** %3, align 8
  br label %92

87:                                               ; preds = %75, %73, %67, %62, %57, %52, %47, %38, %13
  %88 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %89 = call i32 @kfree(%struct.nxt200x_state* %88)
  %90 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 5, i32* %90)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %92

92:                                               ; preds = %87, %76
  %93 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nxt200x_state* @kzalloc(i32, i32) #2

declare dso_local i32 @nxt200x_readbytes(%struct.nxt200x_state*, i32, i32*, i32) #2

declare dso_local i32 @dprintk(i8*, i32, i32*) #2

declare dso_local i32 @pr_info(i8*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @kfree(%struct.nxt200x_state*) #2

declare dso_local i32 @pr_err(i8*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
