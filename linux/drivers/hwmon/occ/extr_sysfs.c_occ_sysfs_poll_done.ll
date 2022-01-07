; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_sysfs.c_occ_sysfs_poll_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_sysfs.c_occ_sysfs_poll_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i8* }
%struct.TYPE_41__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i8* }
%struct.TYPE_40__ = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i8* }
%struct.TYPE_39__ = type { %struct.TYPE_50__ }
%struct.TYPE_50__ = type { %struct.TYPE_49__ }
%struct.TYPE_49__ = type { i8* }
%struct.TYPE_37__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_35__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_34__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_42__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i8* }
%struct.occ = type { i32, i32, i64, i64, i64, %struct.TYPE_33__*, i32, %struct.TYPE_36__ }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_36__ = type { i64 }
%struct.occ_poll_response_header = type { i32, i32, i64 }

@OCC_STAT_MASTER = common dso_local global i32 0, align 4
@sensor_dev_attr_occ_master = common dso_local global %struct.TYPE_38__ zeroinitializer, align 8
@OCC_STAT_ACTIVE = common dso_local global i32 0, align 4
@sensor_dev_attr_occ_active = common dso_local global %struct.TYPE_41__ zeroinitializer, align 8
@OCC_EXT_STAT_DVFS_OT = common dso_local global i32 0, align 4
@sensor_dev_attr_occ_dvfs_overtemp = common dso_local global %struct.TYPE_40__ zeroinitializer, align 8
@OCC_EXT_STAT_DVFS_POWER = common dso_local global i32 0, align 4
@sensor_dev_attr_occ_dvfs_power = common dso_local global %struct.TYPE_39__ zeroinitializer, align 8
@OCC_EXT_STAT_MEM_THROTTLE = common dso_local global i32 0, align 4
@sensor_dev_attr_occ_mem_throttle = common dso_local global %struct.TYPE_37__ zeroinitializer, align 8
@OCC_EXT_STAT_QUICK_DROP = common dso_local global i32 0, align 4
@sensor_dev_attr_occ_quick_pwr_drop = common dso_local global %struct.TYPE_35__ zeroinitializer, align 8
@sensor_dev_attr_occs_present = common dso_local global %struct.TYPE_34__ zeroinitializer, align 8
@dev_attr_occ_error = common dso_local global %struct.TYPE_42__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @occ_sysfs_poll_done(%struct.occ* %0) #0 {
  %2 = alloca %struct.occ*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.occ_poll_response_header*, align 8
  store %struct.occ* %0, %struct.occ** %2, align 8
  %5 = load %struct.occ*, %struct.occ** %2, align 8
  %6 = getelementptr inbounds %struct.occ, %struct.occ* %5, i32 0, i32 7
  %7 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.occ_poll_response_header*
  store %struct.occ_poll_response_header* %9, %struct.occ_poll_response_header** %4, align 8
  %10 = load %struct.occ*, %struct.occ** %2, align 8
  %11 = getelementptr inbounds %struct.occ, %struct.occ* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %180

15:                                               ; preds = %1
  %16 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %4, align 8
  %17 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @OCC_STAT_MASTER, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.occ*, %struct.occ** %2, align 8
  %22 = getelementptr inbounds %struct.occ, %struct.occ* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @OCC_STAT_MASTER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %20, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @sensor_dev_attr_occ_master, i32 0, i32 0, i32 0, i32 0), align 8
  store i8* %28, i8** %3, align 8
  %29 = load %struct.occ*, %struct.occ** %2, align 8
  %30 = getelementptr inbounds %struct.occ, %struct.occ* %29, i32 0, i32 5
  %31 = load %struct.TYPE_33__*, %struct.TYPE_33__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %31, i32 0, i32 0
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @sysfs_notify(i32* %32, i32* null, i8* %33)
  br label %35

35:                                               ; preds = %27, %15
  %36 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %4, align 8
  %37 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @OCC_STAT_ACTIVE, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.occ*, %struct.occ** %2, align 8
  %42 = getelementptr inbounds %struct.occ, %struct.occ* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @OCC_STAT_ACTIVE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %40, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load i8*, i8** getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @sensor_dev_attr_occ_active, i32 0, i32 0, i32 0, i32 0), align 8
  store i8* %48, i8** %3, align 8
  %49 = load %struct.occ*, %struct.occ** %2, align 8
  %50 = getelementptr inbounds %struct.occ, %struct.occ* %49, i32 0, i32 5
  %51 = load %struct.TYPE_33__*, %struct.TYPE_33__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %51, i32 0, i32 0
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @sysfs_notify(i32* %52, i32* null, i8* %53)
  br label %55

55:                                               ; preds = %47, %35
  %56 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %4, align 8
  %57 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @OCC_EXT_STAT_DVFS_OT, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.occ*, %struct.occ** %2, align 8
  %62 = getelementptr inbounds %struct.occ, %struct.occ* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @OCC_EXT_STAT_DVFS_OT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %60, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %55
  %68 = load i8*, i8** getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @sensor_dev_attr_occ_dvfs_overtemp, i32 0, i32 0, i32 0, i32 0), align 8
  store i8* %68, i8** %3, align 8
  %69 = load %struct.occ*, %struct.occ** %2, align 8
  %70 = getelementptr inbounds %struct.occ, %struct.occ* %69, i32 0, i32 5
  %71 = load %struct.TYPE_33__*, %struct.TYPE_33__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %71, i32 0, i32 0
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @sysfs_notify(i32* %72, i32* null, i8* %73)
  br label %75

75:                                               ; preds = %67, %55
  %76 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %4, align 8
  %77 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @OCC_EXT_STAT_DVFS_POWER, align 4
  %80 = and i32 %78, %79
  %81 = load %struct.occ*, %struct.occ** %2, align 8
  %82 = getelementptr inbounds %struct.occ, %struct.occ* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @OCC_EXT_STAT_DVFS_POWER, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %80, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %75
  %88 = load i8*, i8** getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @sensor_dev_attr_occ_dvfs_power, i32 0, i32 0, i32 0, i32 0), align 8
  store i8* %88, i8** %3, align 8
  %89 = load %struct.occ*, %struct.occ** %2, align 8
  %90 = getelementptr inbounds %struct.occ, %struct.occ* %89, i32 0, i32 5
  %91 = load %struct.TYPE_33__*, %struct.TYPE_33__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %91, i32 0, i32 0
  %93 = load i8*, i8** %3, align 8
  %94 = call i32 @sysfs_notify(i32* %92, i32* null, i8* %93)
  br label %95

95:                                               ; preds = %87, %75
  %96 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %4, align 8
  %97 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @OCC_EXT_STAT_MEM_THROTTLE, align 4
  %100 = and i32 %98, %99
  %101 = load %struct.occ*, %struct.occ** %2, align 8
  %102 = getelementptr inbounds %struct.occ, %struct.occ* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @OCC_EXT_STAT_MEM_THROTTLE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %100, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %95
  %108 = load i8*, i8** getelementptr inbounds (%struct.TYPE_37__, %struct.TYPE_37__* @sensor_dev_attr_occ_mem_throttle, i32 0, i32 0, i32 0, i32 0), align 8
  store i8* %108, i8** %3, align 8
  %109 = load %struct.occ*, %struct.occ** %2, align 8
  %110 = getelementptr inbounds %struct.occ, %struct.occ* %109, i32 0, i32 5
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 0
  %113 = load i8*, i8** %3, align 8
  %114 = call i32 @sysfs_notify(i32* %112, i32* null, i8* %113)
  br label %115

115:                                              ; preds = %107, %95
  %116 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %4, align 8
  %117 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @OCC_EXT_STAT_QUICK_DROP, align 4
  %120 = and i32 %118, %119
  %121 = load %struct.occ*, %struct.occ** %2, align 8
  %122 = getelementptr inbounds %struct.occ, %struct.occ* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @OCC_EXT_STAT_QUICK_DROP, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %120, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %115
  %128 = load i8*, i8** getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @sensor_dev_attr_occ_quick_pwr_drop, i32 0, i32 0, i32 0, i32 0), align 8
  store i8* %128, i8** %3, align 8
  %129 = load %struct.occ*, %struct.occ** %2, align 8
  %130 = getelementptr inbounds %struct.occ, %struct.occ* %129, i32 0, i32 5
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 0
  %133 = load i8*, i8** %3, align 8
  %134 = call i32 @sysfs_notify(i32* %132, i32* null, i8* %133)
  br label %135

135:                                              ; preds = %127, %115
  %136 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %4, align 8
  %137 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @OCC_STAT_MASTER, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %135
  %143 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %4, align 8
  %144 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.occ*, %struct.occ** %2, align 8
  %147 = getelementptr inbounds %struct.occ, %struct.occ* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %145, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %142
  %151 = load i8*, i8** getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @sensor_dev_attr_occs_present, i32 0, i32 0, i32 0, i32 0), align 8
  store i8* %151, i8** %3, align 8
  %152 = load %struct.occ*, %struct.occ** %2, align 8
  %153 = getelementptr inbounds %struct.occ, %struct.occ* %152, i32 0, i32 5
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 0
  %156 = load i8*, i8** %3, align 8
  %157 = call i32 @sysfs_notify(i32* %155, i32* null, i8* %156)
  br label %158

158:                                              ; preds = %150, %142, %135
  %159 = load %struct.occ*, %struct.occ** %2, align 8
  %160 = getelementptr inbounds %struct.occ, %struct.occ* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %158
  %164 = load %struct.occ*, %struct.occ** %2, align 8
  %165 = getelementptr inbounds %struct.occ, %struct.occ* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.occ*, %struct.occ** %2, align 8
  %168 = getelementptr inbounds %struct.occ, %struct.occ* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %166, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %163
  %172 = load i8*, i8** getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @dev_attr_occ_error, i32 0, i32 0, i32 0), align 8
  store i8* %172, i8** %3, align 8
  %173 = load %struct.occ*, %struct.occ** %2, align 8
  %174 = getelementptr inbounds %struct.occ, %struct.occ* %173, i32 0, i32 5
  %175 = load %struct.TYPE_33__*, %struct.TYPE_33__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %175, i32 0, i32 0
  %177 = load i8*, i8** %3, align 8
  %178 = call i32 @sysfs_notify(i32* %176, i32* null, i8* %177)
  br label %179

179:                                              ; preds = %171, %163, %158
  br label %180

180:                                              ; preds = %179, %14
  %181 = load %struct.occ*, %struct.occ** %2, align 8
  %182 = getelementptr inbounds %struct.occ, %struct.occ* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.occ*, %struct.occ** %2, align 8
  %185 = getelementptr inbounds %struct.occ, %struct.occ* %184, i32 0, i32 4
  store i64 %183, i64* %185, align 8
  %186 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %4, align 8
  %187 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.occ*, %struct.occ** %2, align 8
  %190 = getelementptr inbounds %struct.occ, %struct.occ* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %4, align 8
  %192 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.occ*, %struct.occ** %2, align 8
  %195 = getelementptr inbounds %struct.occ, %struct.occ* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %4, align 8
  %197 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.occ*, %struct.occ** %2, align 8
  %200 = getelementptr inbounds %struct.occ, %struct.occ* %199, i32 0, i32 2
  store i64 %198, i64* %200, align 8
  ret void
}

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
