; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c___amd_mp2_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c___amd_mp2_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_i2c_common = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.amd_mp2_dev* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.amd_mp2_dev = type { i64 }

@command_success = common dso_local global i32 0, align 4
@command_failed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid response to i2c command!\0A\00", align 1
@i2c_readcomplete_event = common dso_local global i32 0, align 4
@AMD_C2P_MSG2 = common dso_local global i64 0, align 8
@i2c_readfail_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid i2c status after read (%d)!\0A\00", align 1
@i2c_writecomplete_event = common dso_local global i32 0, align 4
@i2c_writefail_event = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"invalid i2c status after write (%d)!\0A\00", align 1
@i2c_busenable_complete = common dso_local global i32 0, align 4
@i2c_busenable_failed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"invalid i2c status after bus enable (%d)!\0A\00", align 1
@i2c_busdisable_complete = common dso_local global i32 0, align 4
@i2c_busdisable_failed = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"invalid i2c status after bus disable (%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_i2c_common*)* @__amd_mp2_process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__amd_mp2_process_event(%struct.amd_i2c_common* %0) #0 {
  %2 = alloca %struct.amd_i2c_common*, align 8
  %3 = alloca %struct.amd_mp2_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amd_i2c_common* %0, %struct.amd_i2c_common** %2, align 8
  %7 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %8 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %7, i32 0, i32 4
  %9 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %8, align 8
  store %struct.amd_mp2_dev* %9, %struct.amd_mp2_dev** %3, align 8
  %10 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %11 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %16 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %21 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @command_success, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @command_failed, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %3, align 8
  %34 = call i32 @ndev_dev(%struct.amd_mp2_dev* %33)
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %28
  br label %130

37:                                               ; preds = %1
  %38 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %39 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %129 [
    i32 129, label %41
    i32 128, label %75
    i32 130, label %93
    i32 131, label %111
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @i2c_readcomplete_event, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %47 = call i32 @amd_mp2_pci_check_rw_event(%struct.amd_i2c_common* %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 %48, 32
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %52 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %3, align 8
  %57 = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AMD_C2P_MSG2, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @memcpy_fromio(i32 %55, i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %50, %45
  br label %74

64:                                               ; preds = %41
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @i2c_readfail_event, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %3, align 8
  %70 = call i32 @ndev_dev(%struct.amd_mp2_dev* %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (i32, i8*, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %64
  br label %74

74:                                               ; preds = %73, %63
  br label %130

75:                                               ; preds = %37
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @i2c_writecomplete_event, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %81 = call i32 @amd_mp2_pci_check_rw_event(%struct.amd_i2c_common* %80)
  br label %92

82:                                               ; preds = %75
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @i2c_writefail_event, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %3, align 8
  %88 = call i32 @ndev_dev(%struct.amd_mp2_dev* %87)
  %89 = load i32, i32* %4, align 4
  %90 = call i32 (i32, i8*, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %86, %82
  br label %92

92:                                               ; preds = %91, %79
  br label %130

93:                                               ; preds = %37
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @i2c_busenable_complete, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %99 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  br label %110

100:                                              ; preds = %93
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @i2c_busenable_failed, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %3, align 8
  %106 = call i32 @ndev_dev(%struct.amd_mp2_dev* %105)
  %107 = load i32, i32* %4, align 4
  %108 = call i32 (i32, i8*, ...) @dev_err(i32 %106, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %104, %100
  br label %110

110:                                              ; preds = %109, %97
  br label %130

111:                                              ; preds = %37
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @i2c_busdisable_complete, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %117 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  br label %128

118:                                              ; preds = %111
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @i2c_busdisable_failed, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %3, align 8
  %124 = call i32 @ndev_dev(%struct.amd_mp2_dev* %123)
  %125 = load i32, i32* %4, align 4
  %126 = call i32 (i32, i8*, ...) @dev_err(i32 %124, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %122, %118
  br label %128

128:                                              ; preds = %127, %115
  br label %130

129:                                              ; preds = %37
  br label %130

130:                                              ; preds = %36, %129, %128, %110, %92, %74
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ndev_dev(%struct.amd_mp2_dev*) #1

declare dso_local i32 @amd_mp2_pci_check_rw_event(%struct.amd_i2c_common*) #1

declare dso_local i32 @memcpy_fromio(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
