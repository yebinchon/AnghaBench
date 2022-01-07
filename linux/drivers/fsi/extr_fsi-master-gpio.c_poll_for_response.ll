; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_poll_for_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_poll_for_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_gpio = type { i32, i32 }
%struct.fsi_gpio_msg = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@FSI_CRC_ERR_RETRIES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"CRC error retry %d\0A\00", align 1
@FSI_MASTER_EPOLL_CLOCKS = common dso_local global i32 0, align 4
@FSI_MASTER_MAX_BUSY = common dso_local global i32 0, align 4
@FSI_MASTER_DPOLL_CLOCKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"ERR slave is stuck in busy state, issuing TERM\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ERRA received: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ERRC received: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_gpio*, i32, i32, i8*)* @poll_for_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_for_response(%struct.fsi_master_gpio* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.fsi_master_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fsi_gpio_msg, align 4
  %10 = alloca %struct.fsi_gpio_msg, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.fsi_master_gpio* %0, %struct.fsi_master_gpio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %21

21:                                               ; preds = %110, %37, %4
  %22 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @read_one_response(%struct.fsi_master_gpio* %22, i32 %23, %struct.fsi_gpio_msg* %9, i32* %15)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %21
  %30 = load i32, i32* %17, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* @FSI_CRC_ERR_RETRIES, align 4
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %169

37:                                               ; preds = %29
  %38 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %39 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %44 = call i32 @trace_fsi_master_gpio_crc_rsp_error(%struct.fsi_master_gpio* %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @build_epoll_command(%struct.fsi_gpio_msg* %10, i32 %45)
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @local_irq_save(i64 %47)
  %49 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %50 = load i32, i32* @FSI_MASTER_EPOLL_CLOCKS, align 4
  %51 = call i32 @clock_zeros(%struct.fsi_master_gpio* %49, i32 %50)
  %52 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %53 = call i32 @serial_out(%struct.fsi_master_gpio* %52, %struct.fsi_gpio_msg* %10)
  %54 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %55 = call i32 @echo_delay(%struct.fsi_master_gpio* %54)
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @local_irq_restore(i64 %56)
  br label %21

58:                                               ; preds = %21
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %169

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %15, align 4
  switch i32 %64, label %161 [
    i32 131, label %65
    i32 130, label %105
    i32 129, label %141
    i32 128, label %150
  ]

65:                                               ; preds = %63
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %104

68:                                               ; preds = %65
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %104

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = ashr i32 %74, 4
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 %76, 8
  %78 = zext i32 %77 to i64
  %79 = shl i64 1, %78
  %80 = sub i64 %79, 1
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = and i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %100, %71
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load i32, i32* %18, align 4
  %91 = load i32*, i32** %16, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %13, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  store i32 %90, i32* %97, align 4
  %98 = load i32, i32* %18, align 4
  %99 = ashr i32 %98, 8
  store i32 %99, i32* %18, align 4
  br label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %85

103:                                              ; preds = %85
  br label %104

104:                                              ; preds = %103, %68, %65
  br label %161

105:                                              ; preds = %63
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* @FSI_MASTER_MAX_BUSY, align 4
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @build_dpoll_command(%struct.fsi_gpio_msg* %10, i32 %111)
  %113 = load i64, i64* %14, align 8
  %114 = call i32 @local_irq_save(i64 %113)
  %115 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %116 = load i32, i32* @FSI_MASTER_DPOLL_CLOCKS, align 4
  %117 = call i32 @clock_zeros(%struct.fsi_master_gpio* %115, i32 %116)
  %118 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %119 = call i32 @serial_out(%struct.fsi_master_gpio* %118, %struct.fsi_gpio_msg* %10)
  %120 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %121 = call i32 @echo_delay(%struct.fsi_master_gpio* %120)
  %122 = load i64, i64* %14, align 8
  %123 = call i32 @local_irq_restore(i64 %122)
  br label %21

124:                                              ; preds = %105
  %125 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %126 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @dev_warn(i32 %127, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i64, i64* %14, align 8
  %130 = call i32 @local_irq_save(i64 %129)
  %131 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %132 = load i32, i32* @FSI_MASTER_DPOLL_CLOCKS, align 4
  %133 = call i32 @clock_zeros(%struct.fsi_master_gpio* %131, i32 %132)
  %134 = load i64, i64* %14, align 8
  %135 = call i32 @local_irq_restore(i64 %134)
  %136 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @issue_term(%struct.fsi_master_gpio* %136, i32 %137)
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %12, align 4
  br label %161

141:                                              ; preds = %63
  %142 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %143 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %9, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dev_dbg(i32 %144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @EIO, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %12, align 4
  br label %161

150:                                              ; preds = %63
  %151 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %152 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %9, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @dev_dbg(i32 %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  %157 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %158 = call i32 @trace_fsi_master_gpio_crc_cmd_error(%struct.fsi_master_gpio* %157)
  %159 = load i32, i32* @EAGAIN, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %63, %150, %141, %124, %104
  %162 = load i32, i32* %11, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @trace_fsi_master_gpio_poll_response_busy(%struct.fsi_master_gpio* %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %161
  br label %169

169:                                              ; preds = %168, %61, %34
  %170 = load i64, i64* %14, align 8
  %171 = call i32 @local_irq_save(i64 %170)
  %172 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %173 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %174 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @clock_zeros(%struct.fsi_master_gpio* %172, i32 %175)
  %177 = load i64, i64* %14, align 8
  %178 = call i32 @local_irq_restore(i64 %177)
  %179 = load i32, i32* %12, align 4
  ret i32 %179
}

declare dso_local i32 @read_one_response(%struct.fsi_master_gpio*, i32, %struct.fsi_gpio_msg*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @trace_fsi_master_gpio_crc_rsp_error(%struct.fsi_master_gpio*) #1

declare dso_local i32 @build_epoll_command(%struct.fsi_gpio_msg*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @clock_zeros(%struct.fsi_master_gpio*, i32) #1

declare dso_local i32 @serial_out(%struct.fsi_master_gpio*, %struct.fsi_gpio_msg*) #1

declare dso_local i32 @echo_delay(%struct.fsi_master_gpio*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @build_dpoll_command(%struct.fsi_gpio_msg*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @issue_term(%struct.fsi_master_gpio*, i32) #1

declare dso_local i32 @trace_fsi_master_gpio_crc_cmd_error(%struct.fsi_master_gpio*) #1

declare dso_local i32 @trace_fsi_master_gpio_poll_response_busy(%struct.fsi_master_gpio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
