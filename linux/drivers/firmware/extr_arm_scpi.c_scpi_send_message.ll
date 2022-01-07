; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_scpi.c_scpi_send_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_scpi.c_scpi_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64, i64, %struct.scpi_chan*, i32, i32 }
%struct.scpi_chan = type { i32 }
%struct.scpi_xfer = type { i32, i32, i32, i32, i32, i8*, i8*, i32 }

@scpi_info = common dso_local global %struct.TYPE_2__* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCPI_SLOT = common dso_local global i32 0, align 4
@MAX_RX_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, i8*, i32)* @scpi_send_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scpi_send_message(i64 %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.scpi_xfer*, align 8
  %16 = alloca %struct.scpi_chan*, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scpi_info, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %161

27:                                               ; preds = %5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scpi_info, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %14, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scpi_info, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = load i64, i64* %14, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scpi_info, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @test_bit(i64 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %13, align 8
  br label %56

48:                                               ; preds = %27
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scpi_info, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = call i64 @atomic_inc_return(i32* %50)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scpi_info, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = urem i64 %51, %54
  store i64 %55, i64* %13, align 8
  br label %56

56:                                               ; preds = %48, %38
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scpi_info, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load %struct.scpi_chan*, %struct.scpi_chan** %58, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds %struct.scpi_chan, %struct.scpi_chan* %59, i64 %60
  store %struct.scpi_chan* %61, %struct.scpi_chan** %16, align 8
  %62 = load %struct.scpi_chan*, %struct.scpi_chan** %16, align 8
  %63 = call %struct.scpi_xfer* @get_scpi_xfer(%struct.scpi_chan* %62)
  store %struct.scpi_xfer* %63, %struct.scpi_xfer** %15, align 8
  %64 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %65 = icmp ne %struct.scpi_xfer* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %161

69:                                               ; preds = %56
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scpi_info, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load i64, i64* %14, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @PACK_LEGACY_SCPI_CMD(i64 %75, i32 %76)
  %78 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %79 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %81 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %84 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  br label %95

85:                                               ; preds = %69
  %86 = load i32, i32* @SCPI_SLOT, align 4
  %87 = call i32 @BIT(i32 %86)
  %88 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %89 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @PACK_SCPI_CMD(i64 %90, i32 %91)
  %93 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %94 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %85, %74
  %96 = load i8*, i8** %8, align 8
  %97 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %98 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %97, i32 0, i32 6
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %101 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %104 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %103, i32 0, i32 5
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %107 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %109 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %108, i32 0, i32 4
  %110 = call i32 @reinit_completion(i32* %109)
  %111 = load %struct.scpi_chan*, %struct.scpi_chan** %16, align 8
  %112 = getelementptr inbounds %struct.scpi_chan, %struct.scpi_chan* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %115 = call i32 @mbox_send_message(i32 %113, %struct.scpi_xfer* %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %95
  %119 = load i8*, i8** %10, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %118, %95
  br label %136

122:                                              ; preds = %118
  %123 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %124 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %123, i32 0, i32 4
  %125 = load i32, i32* @MAX_RX_TIMEOUT, align 4
  %126 = call i32 @wait_for_completion_timeout(i32* %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* @ETIMEDOUT, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %12, align 4
  br label %135

131:                                              ; preds = %122
  %132 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %133 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %131, %128
  br label %136

136:                                              ; preds = %135, %121
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load i8*, i8** %10, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load %struct.scpi_chan*, %struct.scpi_chan** %16, align 8
  %144 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %145 = getelementptr inbounds %struct.scpi_xfer, %struct.scpi_xfer* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @scpi_process_cmd(%struct.scpi_chan* %143, i32 %146)
  br label %148

148:                                              ; preds = %142, %139, %136
  %149 = load %struct.scpi_xfer*, %struct.scpi_xfer** %15, align 8
  %150 = load %struct.scpi_chan*, %struct.scpi_chan** %16, align 8
  %151 = call i32 @put_scpi_xfer(%struct.scpi_xfer* %149, %struct.scpi_chan* %150)
  %152 = load i32, i32* %12, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @scpi_to_linux_errno(i32 %155)
  br label %159

157:                                              ; preds = %148
  %158 = load i32, i32* %12, align 4
  br label %159

159:                                              ; preds = %157, %154
  %160 = phi i32 [ %156, %154 ], [ %158, %157 ]
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %159, %66, %24
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local %struct.scpi_xfer* @get_scpi_xfer(%struct.scpi_chan*) #1

declare dso_local i32 @PACK_LEGACY_SCPI_CMD(i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @PACK_SCPI_CMD(i64, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @mbox_send_message(i32, %struct.scpi_xfer*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @scpi_process_cmd(%struct.scpi_chan*, i32) #1

declare dso_local i32 @put_scpi_xfer(%struct.scpi_xfer*, %struct.scpi_chan*) #1

declare dso_local i32 @scpi_to_linux_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
