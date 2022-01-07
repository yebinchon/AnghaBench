; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp2.c_sp2_ci_op_cam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp2.c_sp2_ci_op_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.sp2* }
%struct.sp2 = type { i32 (i8*, i32, i32, i32, i32*)*, i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SP2_MOD_CTL_ACS1 = common dso_local global i32 0, align 4
@SP2_MOD_CTL_ACS0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"callback not defined\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: slot=%d, addr=0x%04x, %s, data=%x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@SP2_CI_ATTR_ACS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32, i32, i32, i32)* @sp2_ci_op_cam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp2_ci_op_cam(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_ca_en50221*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sp2*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32 (i8*, i32, i32, i32, i32*)*, align 8
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %8, align 8
  %20 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %19, i32 0, i32 0
  %21 = load %struct.sp2*, %struct.sp2** %20, align 8
  store %struct.sp2* %21, %struct.sp2** %14, align 8
  %22 = load %struct.sp2*, %struct.sp2** %14, align 8
  %23 = getelementptr inbounds %struct.sp2, %struct.sp2* %22, i32 0, i32 0
  %24 = load i32 (i8*, i32, i32, i32, i32*)*, i32 (i8*, i32, i32, i32, i32*)** %23, align 8
  store i32 (i8*, i32, i32, i32, i32*)* %24, i32 (i8*, i32, i32, i32, i32*)** %18, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %118

30:                                               ; preds = %6
  %31 = load %struct.sp2*, %struct.sp2** %14, align 8
  %32 = getelementptr inbounds %struct.sp2, %struct.sp2* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load %struct.sp2*, %struct.sp2** %14, align 8
  %38 = call i32 @sp2_read_i2c(%struct.sp2* %37, i32 0, i32* %15, i32 1)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %7, align 4
  br label %118

43:                                               ; preds = %36
  %44 = load i32, i32* @SP2_MOD_CTL_ACS1, align 4
  %45 = load i32, i32* @SP2_MOD_CTL_ACS0, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %15, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %15, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %15, align 4
  %53 = load %struct.sp2*, %struct.sp2** %14, align 8
  %54 = call i32 @sp2_write_i2c(%struct.sp2* %53, i32 0, i32* %15, i32 1)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %7, align 4
  br label %118

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %30
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.sp2*, %struct.sp2** %14, align 8
  %63 = getelementptr inbounds %struct.sp2, %struct.sp2* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i32 (i8*, i32, i32, i32, i32*)*, i32 (i8*, i32, i32, i32, i32*)** %18, align 8
  %65 = icmp ne i32 (i8*, i32, i32, i32, i32*)* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load i32 (i8*, i32, i32, i32, i32*)*, i32 (i8*, i32, i32, i32, i32*)** %18, align 8
  %68 = load %struct.sp2*, %struct.sp2** %14, align 8
  %69 = getelementptr inbounds %struct.sp2, %struct.sp2* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 %67(i8* %70, i32 %71, i32 %72, i32 %73, i32* %16)
  store i32 %74, i32* %17, align 4
  br label %83

75:                                               ; preds = %60
  %76 = load %struct.sp2*, %struct.sp2** %14, align 8
  %77 = getelementptr inbounds %struct.sp2, %struct.sp2* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %118

83:                                               ; preds = %66
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %7, align 4
  br label %118

88:                                               ; preds = %83
  %89 = load %struct.sp2*, %struct.sp2** %14, align 8
  %90 = getelementptr inbounds %struct.sp2, %struct.sp2* %89, i32 0, i32 3
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @SP2_CI_ATTR_ACS, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %88
  %107 = load i32, i32* %16, align 4
  br label %110

108:                                              ; preds = %88
  %109 = load i32, i32* %13, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = call i32 @dev_dbg(i32* %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %96, i32 %97, i32 %98, i8* %103, i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %7, align 4
  br label %118

117:                                              ; preds = %110
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %115, %86, %75, %57, %41, %27
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @sp2_read_i2c(%struct.sp2*, i32, i32*, i32) #1

declare dso_local i32 @sp2_write_i2c(%struct.sp2*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
