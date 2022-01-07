; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.lgdt3306a_state*, i32 }
%struct.lgdt3306a_state = type { i32, i32, %struct.dvb_frontend, %struct.i2c_adapter*, %struct.lgdt3306a_config* }
%struct.lgdt3306a_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"(%d-%04x)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@lgdt3306a_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"expected 0x74, got 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"expected 0xc6, got 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"expected 0x03, got 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"unable to detect LGDT3306A hardware\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @lgdt3306a_attach(%struct.lgdt3306a_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.lgdt3306a_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.lgdt3306a_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lgdt3306a_config* %0, %struct.lgdt3306a_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.lgdt3306a_state* null, %struct.lgdt3306a_state** %6, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %10 = icmp ne %struct.i2c_adapter* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %12)
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ %13, %11 ], [ 0, %14 ]
  %17 = load %struct.lgdt3306a_config*, %struct.lgdt3306a_config** %4, align 8
  %18 = icmp ne %struct.lgdt3306a_config* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.lgdt3306a_config*, %struct.lgdt3306a_config** %4, align 8
  %21 = getelementptr inbounds %struct.lgdt3306a_config, %struct.lgdt3306a_config* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 0, %23 ]
  %26 = call i32 @dbg_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.lgdt3306a_state* @kzalloc(i32 40, i32 %27)
  store %struct.lgdt3306a_state* %28, %struct.lgdt3306a_state** %6, align 8
  %29 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %30 = icmp eq %struct.lgdt3306a_state* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %100

32:                                               ; preds = %24
  %33 = load %struct.lgdt3306a_config*, %struct.lgdt3306a_config** %4, align 8
  %34 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %35 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %34, i32 0, i32 4
  store %struct.lgdt3306a_config* %33, %struct.lgdt3306a_config** %35, align 8
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %37 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %38 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %37, i32 0, i32 3
  store %struct.i2c_adapter* %36, %struct.i2c_adapter** %38, align 8
  %39 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %40 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %40, i32 0, i32 1
  %42 = call i32 @memcpy(i32* %41, i32* @lgdt3306a_ops, i32 4)
  %43 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %44 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %45 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %45, i32 0, i32 0
  store %struct.lgdt3306a_state* %43, %struct.lgdt3306a_state** %46, align 8
  %47 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %48 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %47, i32 0, i32* %8)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @lg_chkerr(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  br label %100

53:                                               ; preds = %32
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 116
  %56 = icmp ne i32 %55, 116
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, 116
  %60 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  %62 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %63 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %62, i32 1, i32* %8)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @lg_chkerr(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %100

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 246
  %71 = icmp ne i32 %70, 198
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, 246
  %75 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %78 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %77, i32 2, i32* %8)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @lg_chkerr(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %100

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 115
  %86 = icmp ne i32 %85, 3
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, 115
  %90 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %93 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %92, i32 0, i32 0
  store i32 -1, i32* %93, align 8
  %94 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %95 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %94, i32 0, i32 1
  store i32 -1, i32* %95, align 4
  %96 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %97 = call i32 @lgdt3306a_sleep(%struct.lgdt3306a_state* %96)
  %98 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %99 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %98, i32 0, i32 2
  store %struct.dvb_frontend* %99, %struct.dvb_frontend** %3, align 8
  br label %104

100:                                              ; preds = %82, %67, %52, %31
  %101 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %102 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %103 = call i32 @kfree(%struct.lgdt3306a_state* %102)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %104

104:                                              ; preds = %100, %91
  %105 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %105
}

declare dso_local i32 @dbg_info(i8*, i32, i32) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local %struct.lgdt3306a_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state*, i32, i32*) #1

declare dso_local i64 @lg_chkerr(i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @lgdt3306a_sleep(%struct.lgdt3306a_state*) #1

declare dso_local i32 @kfree(%struct.lgdt3306a_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
