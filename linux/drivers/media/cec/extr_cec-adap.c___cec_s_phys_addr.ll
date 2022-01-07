; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c___cec_s_phys_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c___cec_s_phys_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__*, i64, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i64 (%struct.cec_adapter*, i32)* }

@CEC_PHYS_ADDR_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"new physical address %x.%x.%x.%x\0A\00", align 1
@adap_monitor_all_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cec_s_phys_addr(%struct.cec_adapter* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %180

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @CEC_PHYS_ADDR_INVALID, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %180

24:                                               ; preds = %17, %13
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @cec_phys_addr_exp(i64 %25)
  %27 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @CEC_PHYS_ADDR_INVALID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  %32 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CEC_PHYS_ADDR_INVALID, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %31, %24
  %38 = load i64, i64* @CEC_PHYS_ADDR_INVALID, align 8
  %39 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %42 = call i32 @cec_post_state_event(%struct.cec_adapter* %41)
  %43 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %44 = call i32 @cec_adap_unconfigure(%struct.cec_adapter* %43)
  %45 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %51 = load i32, i32* @adap_monitor_all_enable, align 4
  %52 = call i64 @call_op(%struct.cec_adapter* %50, i32 %51, i32 0)
  %53 = call i32 @WARN_ON(i64 %52)
  br label %54

54:                                               ; preds = %49, %37
  %55 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %60 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %54
  %64 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %65 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = call i64 @list_empty(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %63, %54
  %70 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %70, i32 0, i32 5
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64 (%struct.cec_adapter*, i32)*, i64 (%struct.cec_adapter*, i32)** %73, align 8
  %75 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %76 = call i64 %74(%struct.cec_adapter* %75, i32 0)
  %77 = call i32 @WARN_ON(i64 %76)
  %78 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %78, i32 0, i32 1
  store i32 0, i32* %79, align 8
  %80 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %81 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %80, i32 0, i32 8
  %82 = call i32 @wake_up_interruptible(i32* %81)
  br label %83

83:                                               ; preds = %69, %63
  %84 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @CEC_PHYS_ADDR_INVALID, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %180

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %31
  %94 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %95 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = call i32 @mutex_lock(i32* %96)
  %98 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %99 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %98, i32 0, i32 2
  store i32 255, i32* %99, align 4
  %100 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %101 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %100, i32 0, i32 1
  store i32 0, i32* %101, align 8
  %102 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %103 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %93
  %107 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %108 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = call i64 @list_empty(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %106, %93
  %113 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %114 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %113, i32 0, i32 5
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64 (%struct.cec_adapter*, i32)*, i64 (%struct.cec_adapter*, i32)** %116, align 8
  %118 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %119 = call i64 %117(%struct.cec_adapter* %118, i32 1)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %112
  %122 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %123 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  br label %180

126:                                              ; preds = %112, %106
  %127 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %128 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %127, i32 0, i32 7
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %161

131:                                              ; preds = %126
  %132 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %133 = load i32, i32* @adap_monitor_all_enable, align 4
  %134 = call i64 @call_op(%struct.cec_adapter* %132, i32 %133, i32 1)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %161

136:                                              ; preds = %131
  %137 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %138 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %136
  %142 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %143 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = call i64 @list_empty(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %141, %136
  %148 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %149 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %148, i32 0, i32 5
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i64 (%struct.cec_adapter*, i32)*, i64 (%struct.cec_adapter*, i32)** %151, align 8
  %153 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %154 = call i64 %152(%struct.cec_adapter* %153, i32 0)
  %155 = call i32 @WARN_ON(i64 %154)
  br label %156

156:                                              ; preds = %147, %141
  %157 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %158 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = call i32 @mutex_unlock(i32* %159)
  br label %180

161:                                              ; preds = %131, %126
  %162 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %163 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load i64, i64* %5, align 8
  %167 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %168 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %170 = call i32 @cec_post_state_event(%struct.cec_adapter* %169)
  %171 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %172 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %161
  %177 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @cec_claim_log_addrs(%struct.cec_adapter* %177, i32 %178)
  br label %180

180:                                              ; preds = %12, %23, %91, %121, %156, %176, %161
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @cec_phys_addr_exp(i64) #1

declare dso_local i32 @cec_post_state_event(%struct.cec_adapter*) #1

declare dso_local i32 @cec_adap_unconfigure(%struct.cec_adapter*) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i64 @call_op(%struct.cec_adapter*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cec_claim_log_addrs(%struct.cec_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
