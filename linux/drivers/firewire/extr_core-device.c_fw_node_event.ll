; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_fw_node_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_fw_node_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32, i32, %struct.fw_node* }
%struct.fw_node = type { %struct.fw_device*, i32 }
%struct.fw_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@FW_DEVICE_INITIALIZING = common dso_local global i32 0, align 4
@fw_device_init = common dso_local global i32 0, align 4
@fw_device_workfn = common dso_local global i32 0, align 4
@INITIAL_DELAY = common dso_local global i32 0, align 4
@FW_DEVICE_RUNNING = common dso_local global i32 0, align 4
@fw_device_refresh = common dso_local global i32 0, align 4
@fw_device_update = common dso_local global i32 0, align 4
@FW_DEVICE_GONE = common dso_local global i32 0, align 4
@fw_device_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_node_event(%struct.fw_card* %0, %struct.fw_node* %1, i32 %2) #0 {
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca %struct.fw_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_device*, align 8
  store %struct.fw_card* %0, %struct.fw_card** %4, align 8
  store %struct.fw_node* %1, %struct.fw_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %171 [
    i32 133, label %9
    i32 131, label %66
    i32 129, label %66
    i32 128, label %108
    i32 132, label %139
    i32 130, label %139
  ]

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %72, %9
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.fw_device* @kzalloc(i32 40, i32 %11)
  store %struct.fw_device* %12, %struct.fw_device** %7, align 8
  %13 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %14 = icmp eq %struct.fw_device* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %171

16:                                               ; preds = %10
  %17 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %18 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %17, i32 0, i32 2
  %19 = load i32, i32* @FW_DEVICE_INITIALIZING, align 4
  %20 = call i32 @atomic_set(i32* %18, i32 %19)
  %21 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %22 = call i32 @fw_card_get(%struct.fw_card* %21)
  %23 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %24 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %26 = call i32 @fw_node_get(%struct.fw_node* %25)
  %27 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %28 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  %29 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %30 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %33 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %35 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %38 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %40 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %41 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %40, i32 0, i32 2
  %42 = load %struct.fw_node*, %struct.fw_node** %41, align 8
  %43 = icmp eq %struct.fw_node* %39, %42
  %44 = zext i1 %43 to i32
  %45 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %46 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %48 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %47, i32 0, i32 7
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %51 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %50, i32 0, i32 6
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %54 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %55 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %54, i32 0, i32 0
  store %struct.fw_device* %53, %struct.fw_device** %55, align 8
  %56 = load i32, i32* @fw_device_init, align 4
  %57 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %58 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %60 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %59, i32 0, i32 5
  %61 = load i32, i32* @fw_device_workfn, align 4
  %62 = call i32 @INIT_DELAYED_WORK(i32* %60, i32 %61)
  %63 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %64 = load i32, i32* @INITIAL_DELAY, align 4
  %65 = call i32 @fw_schedule_device_work(%struct.fw_device* %63, i32 %64)
  br label %171

66:                                               ; preds = %3, %3
  %67 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %68 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %67, i32 0, i32 0
  %69 = load %struct.fw_device*, %struct.fw_device** %68, align 8
  store %struct.fw_device* %69, %struct.fw_device** %7, align 8
  %70 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %71 = icmp eq %struct.fw_device* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %10

73:                                               ; preds = %66
  %74 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %75 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %78 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = call i32 (...) @smp_wmb()
  %80 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %81 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %84 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %86 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %85, i32 0, i32 2
  %87 = load i32, i32* @FW_DEVICE_RUNNING, align 4
  %88 = load i32, i32* @FW_DEVICE_INITIALIZING, align 4
  %89 = call i32 @atomic_cmpxchg(i32* %86, i32 %87, i32 %88)
  %90 = load i32, i32* @FW_DEVICE_RUNNING, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %73
  %93 = load i32, i32* @fw_device_refresh, align 4
  %94 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %95 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %97 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %98 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %104

102:                                              ; preds = %92
  %103 = load i32, i32* @INITIAL_DELAY, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = phi i32 [ 0, %101 ], [ %103, %102 ]
  %106 = call i32 @fw_schedule_device_work(%struct.fw_device* %96, i32 %105)
  br label %107

107:                                              ; preds = %104, %73
  br label %171

108:                                              ; preds = %3
  %109 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %110 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %109, i32 0, i32 0
  %111 = load %struct.fw_device*, %struct.fw_device** %110, align 8
  store %struct.fw_device* %111, %struct.fw_device** %7, align 8
  %112 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %113 = icmp eq %struct.fw_device* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %171

115:                                              ; preds = %108
  %116 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %117 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %120 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  %121 = call i32 (...) @smp_wmb()
  %122 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %123 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %126 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %128 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %127, i32 0, i32 2
  %129 = call i32 @atomic_read(i32* %128)
  %130 = load i32, i32* @FW_DEVICE_RUNNING, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %115
  %133 = load i32, i32* @fw_device_update, align 4
  %134 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %135 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %137 = call i32 @fw_schedule_device_work(%struct.fw_device* %136, i32 0)
  br label %138

138:                                              ; preds = %132, %115
  br label %171

139:                                              ; preds = %3, %3
  %140 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %141 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %140, i32 0, i32 0
  %142 = load %struct.fw_device*, %struct.fw_device** %141, align 8
  %143 = icmp ne %struct.fw_device* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  br label %171

145:                                              ; preds = %139
  %146 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %147 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %146, i32 0, i32 0
  %148 = load %struct.fw_device*, %struct.fw_device** %147, align 8
  store %struct.fw_device* %148, %struct.fw_device** %7, align 8
  %149 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %150 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %149, i32 0, i32 2
  %151 = load i32, i32* @FW_DEVICE_GONE, align 4
  %152 = call i32 @atomic_xchg(i32* %150, i32 %151)
  %153 = load i32, i32* @FW_DEVICE_RUNNING, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %170

155:                                              ; preds = %145
  %156 = load i32, i32* @fw_device_shutdown, align 4
  %157 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %158 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %160 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %161 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %160, i32 0, i32 0
  %162 = call i32 @list_empty(i32* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %167

165:                                              ; preds = %155
  %166 = load i32, i32* @SHUTDOWN_DELAY, align 4
  br label %167

167:                                              ; preds = %165, %164
  %168 = phi i32 [ 0, %164 ], [ %166, %165 ]
  %169 = call i32 @fw_schedule_device_work(%struct.fw_device* %159, i32 %168)
  br label %170

170:                                              ; preds = %167, %145
  br label %171

171:                                              ; preds = %3, %170, %144, %138, %114, %107, %16, %15
  ret void
}

declare dso_local %struct.fw_device* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @fw_card_get(%struct.fw_card*) #1

declare dso_local i32 @fw_node_get(%struct.fw_node*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @fw_schedule_device_work(%struct.fw_device*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
