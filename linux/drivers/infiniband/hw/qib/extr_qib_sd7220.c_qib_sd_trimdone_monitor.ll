; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd_trimdone_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd_trimdone_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"not able to re-sync IB EPB (%s)\0A\00", align 1
@IB_7220_SERDES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed TRIMDONE 1st read, (%s)\0A\00", align 1
@kr_ibcstatus = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"IBCS TRIMDONE clear (%s)\0A\00", align 1
@IB_MPREG6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed Dummy RMW, (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed checking TRIMDONE, chn %d (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"TRIMDONE cleared on chn %d (%02X). (%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"probe is %d (%02X)\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"re-read: %d (%02X)\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Err on TRIMDONE rewrite1\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Resetting TRIMDONE on chn %d (%s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Failed re-setting TRIMDONE, chn %d (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*, i8*)* @qib_sd_trimdone_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_sd_trimdone_monitor(%struct.qib_devdata* %0, i8* %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %13

13:                                               ; preds = %12, %2
  %14 = call i32 @udelay(i32 2)
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %16 = call i32 @qib_resync_ibepb(%struct.qib_devdata* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %25 = load i32, i32* @IB_7220_SERDES, align 4
  %26 = call i32 @IB_CTRL2(i32 0)
  %27 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %24, i32 %25, i32 %26, i32 0, i32 0)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %36 = load i32, i32* @kr_ibcstatus, align 4
  %37 = call i64 @qib_read_kreg64(%struct.qib_devdata* %35, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = and i64 %38, 2048
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %41, %34
  %46 = call i32 @udelay(i32 2)
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %48 = load i32, i32* @IB_7220_SERDES, align 4
  %49 = load i32, i32* @IB_MPREG6, align 4
  %50 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %47, i32 %48, i32 %49, i32 128, i32 128)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %53, %45
  %58 = call i32 @udelay(i32 10)
  store i32 0, i32* %7, align 4
  store i32 3, i32* %6, align 4
  br label %59

59:                                               ; preds = %118, %57
  %60 = load i32, i32* %6, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %121

62:                                               ; preds = %59
  %63 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %64 = load i32, i32* @IB_7220_SERDES, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @IB_CTRL2(i32 %65)
  %67 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %63, i32 %64, i32 %66, i32 0, i32 0)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %72, i8* %73)
  br label %75

75:                                               ; preds = %70, %62
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 16
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %117, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = shl i32 1, %80
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %85, i32 %86, i8* %87)
  %89 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %90 = load i32, i32* @IB_7220_SERDES, align 4
  %91 = call i32 @IB_PGUDP(i32 0)
  %92 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %89, i32 %90, i32 %91, i32 0, i32 0)
  store i32 %92, i32* %9, align 4
  %93 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %98 = load i32, i32* @IB_7220_SERDES, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @IB_CTRL2(i32 %99)
  %101 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %97, i32 %98, i32 %100, i32 0, i32 0)
  store i32 %101, i32* %9, align 4
  %102 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %107 = load i32, i32* @IB_7220_SERDES, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @IB_CTRL2(i32 %108)
  %110 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %106, i32 %107, i32 %109, i32 16, i32 16)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %79
  %114 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %115 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %79
  br label %117

117:                                              ; preds = %116, %75
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %6, align 4
  br label %59

121:                                              ; preds = %59
  store i32 3, i32* %6, align 4
  br label %122

122:                                              ; preds = %150, %121
  %123 = load i32, i32* %6, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %153

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %6, align 4
  %128 = shl i32 1, %127
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %125
  %132 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %133 = load i32, i32* %6, align 4
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %132, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %133, i8* %134)
  %136 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %137 = load i32, i32* @IB_7220_SERDES, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @IB_CTRL2(i32 %138)
  %140 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %136, i32 %137, i32 %139, i32 16, i32 16)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %131
  %144 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load i8*, i8** %4, align 8
  %147 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %144, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %145, i8* %146)
  br label %148

148:                                              ; preds = %143, %131
  br label %149

149:                                              ; preds = %148, %125
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %6, align 4
  br label %122

153:                                              ; preds = %122
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @qib_resync_ibepb(%struct.qib_devdata*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @qib_sd7220_reg_mod(%struct.qib_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @IB_CTRL2(i32) #1

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @IB_PGUDP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
