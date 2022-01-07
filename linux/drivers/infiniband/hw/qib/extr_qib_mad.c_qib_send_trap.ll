; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_send_trap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_send_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i32, %struct.TYPE_6__*, i32, %struct.ib_mad_agent* }
%struct.TYPE_6__ = type { %struct.ib_mad_send_buf }
%struct.ib_mad_send_buf = type { %struct.ib_mad_send_buf*, %struct.ib_smp* }
%struct.ib_smp = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_mad_agent = type { i32 }
%struct.ib_ah = type { %struct.ib_ah*, %struct.ib_smp* }
%struct.TYPE_5__ = type { i32 }

@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IB_MGMT_MAD_HDR = common dso_local global i32 0, align 4
@IB_MGMT_MAD_DATA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IB_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_TRAP = common dso_local global i32 0, align 4
@IB_SMP_ATTR_NOTICE = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_ibport*, i8*, i32)* @qib_send_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_send_trap(%struct.qib_ibport* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.qib_ibport*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_mad_send_buf*, align 8
  %8 = alloca %struct.ib_mad_agent*, align 8
  %9 = alloca %struct.ib_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ib_ah*, align 8
  store %struct.qib_ibport* %0, %struct.qib_ibport** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %15 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 6
  %17 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %16, align 8
  store %struct.ib_mad_agent* %17, %struct.ib_mad_agent** %8, align 8
  %18 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %8, align 8
  %19 = icmp ne %struct.ib_mad_agent* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %186

21:                                               ; preds = %3
  %22 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %23 = call %struct.TYPE_5__* @ppd_from_ibp(%struct.qib_ibport* %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %186

30:                                               ; preds = %21
  %31 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %32 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i64, i64* @jiffies, align 8
  %38 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %39 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @time_before(i64 %37, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %186

45:                                               ; preds = %36, %30
  %46 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %8, align 8
  %47 = load i32, i32* @IB_MGMT_MAD_HDR, align 4
  %48 = load i32, i32* @IB_MGMT_MAD_DATA, align 4
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = load i32, i32* @IB_MGMT_BASE_VERSION, align 4
  %51 = call %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent* %46, i32 0, i32 0, i32 0, i32 %47, i32 %48, i32 %49, i32 %50)
  store %struct.ib_mad_send_buf* %51, %struct.ib_mad_send_buf** %7, align 8
  %52 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %53 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %186

56:                                               ; preds = %45
  %57 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %58 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %57, i32 0, i32 1
  %59 = load %struct.ib_smp*, %struct.ib_smp** %58, align 8
  store %struct.ib_smp* %59, %struct.ib_smp** %9, align 8
  %60 = load i32, i32* @IB_MGMT_BASE_VERSION, align 4
  %61 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %62 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 4
  %64 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %65 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %67 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* @IB_MGMT_METHOD_TRAP, align 4
  %69 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %70 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %72 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %77 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @cpu_to_be64(i32 %79)
  %81 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %82 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @IB_SMP_ATTR_NOTICE, align 4
  %84 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %85 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %87 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @memcpy(i32 %88, i8* %89, i32 %90)
  %92 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %93 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i64, i64* %11, align 8
  %96 = call i32 @spin_lock_irqsave(i32* %94, i64 %95)
  %97 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %98 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = icmp ne %struct.TYPE_6__* %100, null
  br i1 %101, label %143, label %102

102:                                              ; preds = %56
  %103 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %104 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %108 = call i64 @be16_to_cpu(i32 %107)
  %109 = icmp ne i64 %106, %108
  br i1 %109, label %110, label %139

110:                                              ; preds = %102
  %111 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %112 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %113 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call %struct.ib_mad_send_buf* @qib_create_qp0_ah(%struct.qib_ibport* %111, i32 %116)
  %118 = bitcast %struct.ib_mad_send_buf* %117 to %struct.ib_ah*
  store %struct.ib_ah* %118, %struct.ib_ah** %13, align 8
  %119 = load %struct.ib_ah*, %struct.ib_ah** %13, align 8
  %120 = bitcast %struct.ib_ah* %119 to %struct.ib_mad_send_buf*
  %121 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %110
  %124 = load %struct.ib_ah*, %struct.ib_ah** %13, align 8
  %125 = bitcast %struct.ib_ah* %124 to %struct.ib_mad_send_buf*
  %126 = call i32 @PTR_ERR(%struct.ib_mad_send_buf* %125)
  store i32 %126, i32* %10, align 4
  br label %138

127:                                              ; preds = %110
  %128 = load %struct.ib_ah*, %struct.ib_ah** %13, align 8
  %129 = bitcast %struct.ib_ah* %128 to %struct.ib_mad_send_buf*
  %130 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %131 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %130, i32 0, i32 0
  store %struct.ib_mad_send_buf* %129, %struct.ib_mad_send_buf** %131, align 8
  %132 = load %struct.ib_ah*, %struct.ib_ah** %13, align 8
  %133 = bitcast %struct.ib_ah* %132 to %struct.ib_mad_send_buf*
  %134 = call %struct.TYPE_6__* @ibah_to_rvtah(%struct.ib_mad_send_buf* %133)
  %135 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %136 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 4
  store %struct.TYPE_6__* %134, %struct.TYPE_6__** %137, align 8
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %127, %123
  br label %142

139:                                              ; preds = %102
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %139, %138
  br label %151

143:                                              ; preds = %56
  %144 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %145 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %150 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %149, i32 0, i32 0
  store %struct.ib_mad_send_buf* %148, %struct.ib_mad_send_buf** %150, align 8
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %143, %142
  %152 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %153 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 3
  %155 = load i64, i64* %11, align 8
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i64 %155)
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %151
  %160 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %161 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %160, i32* null)
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %159, %151
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %180, label %165

165:                                              ; preds = %162
  %166 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %167 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = shl i64 1, %169
  %171 = mul i64 4096, %170
  %172 = udiv i64 %171, 1000
  store i64 %172, i64* %12, align 8
  %173 = load i64, i64* @jiffies, align 8
  %174 = load i64, i64* %12, align 8
  %175 = call i64 @usecs_to_jiffies(i64 %174)
  %176 = add nsw i64 %173, %175
  %177 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %178 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  store i64 %176, i64* %179, align 8
  br label %186

180:                                              ; preds = %162
  %181 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %182 = call i32 @ib_free_send_mad(%struct.ib_mad_send_buf* %181)
  %183 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %184 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  store i64 0, i64* %185, align 8
  br label %186

186:                                              ; preds = %20, %29, %44, %55, %180, %165
  ret void
}

declare dso_local %struct.TYPE_5__* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local %struct.ib_mad_send_buf* @qib_create_qp0_ah(%struct.qib_ibport*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local %struct.TYPE_6__* @ibah_to_rvtah(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i64 @usecs_to_jiffies(i64) #1

declare dso_local i32 @ib_free_send_mad(%struct.ib_mad_send_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
