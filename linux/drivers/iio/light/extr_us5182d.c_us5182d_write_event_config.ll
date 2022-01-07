; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.us5182d_data = type { i32, i32, i32, i8*, i32, i32, i32 }

@US5182D_PXH_TH_DISABLE = common dso_local global i32 0, align 4
@US5182D_CONTINUOUS = common dso_local global i8* null, align 8
@US5182D_PXL_TH_DISABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@US5182D_ONESHOT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @us5182d_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.us5182d_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.us5182d_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.us5182d_data* %16, %struct.us5182d_data** %12, align 8
  %17 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %18 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %111 [
    i32 128, label %21
    i32 129, label %66
  ]

21:                                               ; preds = %5
  %22 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %23 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %29 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %28, i32 0, i32 2
  %30 = call i32 @mutex_unlock(i32* %29)
  store i32 0, i32* %6, align 4
  br label %159

31:                                               ; preds = %21
  %32 = load i32, i32* @US5182D_PXH_TH_DISABLE, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load i8*, i8** @US5182D_CONTINUOUS, align 8
  %37 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %38 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %40 = call i32 @us5182d_set_power_state(%struct.us5182d_data* %39, i32 1)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %154

44:                                               ; preds = %35
  %45 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %46 = call i32 @us5182d_px_enable(%struct.us5182d_data* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %147

50:                                               ; preds = %44
  %51 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %52 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %50, %31
  %55 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @us5182d_setup_prox(%struct.iio_dev* %55, i32 %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %147

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %65 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %114

66:                                               ; preds = %5
  %67 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %68 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %74 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %73, i32 0, i32 2
  %75 = call i32 @mutex_unlock(i32* %74)
  store i32 0, i32* %6, align 4
  br label %159

76:                                               ; preds = %66
  %77 = load i32, i32* @US5182D_PXL_TH_DISABLE, align 4
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load i8*, i8** @US5182D_CONTINUOUS, align 8
  %82 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %83 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %85 = call i32 @us5182d_set_power_state(%struct.us5182d_data* %84, i32 1)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %154

89:                                               ; preds = %80
  %90 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %91 = call i32 @us5182d_px_enable(%struct.us5182d_data* %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %147

95:                                               ; preds = %89
  %96 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %97 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %95, %76
  %100 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @us5182d_setup_prox(%struct.iio_dev* %100, i32 %101, i32 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %147

107:                                              ; preds = %99
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %110 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %114

111:                                              ; preds = %5
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %13, align 4
  br label %154

114:                                              ; preds = %107, %62
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %119 = call i32 @us5182d_set_power_state(%struct.us5182d_data* %118, i32 0)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %154

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %114
  %125 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %126 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %124
  %130 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %131 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %129
  %135 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %136 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = load i8*, i8** @US5182D_ONESHOT, align 8
  %141 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %142 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %141, i32 0, i32 3
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %139, %134, %129, %124
  %144 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %145 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %144, i32 0, i32 2
  %146 = call i32 @mutex_unlock(i32* %145)
  store i32 0, i32* %6, align 4
  br label %159

147:                                              ; preds = %106, %94, %61, %49
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %152 = call i32 @us5182d_set_power_state(%struct.us5182d_data* %151, i32 0)
  br label %153

153:                                              ; preds = %150, %147
  br label %154

154:                                              ; preds = %153, %122, %111, %88, %43
  %155 = load %struct.us5182d_data*, %struct.us5182d_data** %12, align 8
  %156 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %155, i32 0, i32 2
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %154, %143, %72, %27
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local %struct.us5182d_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @us5182d_set_power_state(%struct.us5182d_data*, i32) #1

declare dso_local i32 @us5182d_px_enable(%struct.us5182d_data*) #1

declare dso_local i32 @us5182d_setup_prox(%struct.iio_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
