; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_usnic_ib_qp_grp_modify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_usnic_ib_qp_grp_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_qp_grp = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32 (%struct.ib_event*, i32)* }
%struct.ib_event = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ib_event.0 = type { i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.usnic_transport_spec = type { i32 }
%struct.usnic_ib_qp_grp_flow = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IB_EVENT_QP_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Transitioned %u from %s to %s\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to transition %u from %s to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_ib_qp_grp_modify(%struct.usnic_ib_qp_grp* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.usnic_ib_qp_grp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_event.0, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usnic_transport_spec*, align 8
  %11 = alloca %struct.usnic_ib_qp_grp_flow*, align 8
  store %struct.usnic_ib_qp_grp* %0, %struct.usnic_ib_qp_grp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %13 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.usnic_transport_spec*
  store %struct.usnic_transport_spec* %16, %struct.usnic_transport_spec** %10, align 8
  %17 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %18 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %17, i32 0, i32 2
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %172 [
    i32 130, label %21
    i32 131, label %36
    i32 129, label %98
    i32 128, label %107
    i32 132, label %114
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %32 [
    i32 130, label %23
    i32 131, label %24
    i32 129, label %27
    i32 128, label %27
    i32 132, label %27
  ]

23:                                               ; preds = %21
  br label %35

24:                                               ; preds = %21
  %25 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %26 = call i32 @release_and_remove_all_flows(%struct.usnic_ib_qp_grp* %25)
  store i32 0, i32* %7, align 4
  br label %35

27:                                               ; preds = %21, %21, %21
  %28 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %29 = call i32 @disable_qp_grp(%struct.usnic_ib_qp_grp* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %31 = call i32 @release_and_remove_all_flows(%struct.usnic_ib_qp_grp* %30)
  br label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %27, %24, %23
  br label %175

36:                                               ; preds = %3
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %94 [
    i32 130, label %38
    i32 131, label %62
    i32 129, label %88
    i32 128, label %91
  ]

38:                                               ; preds = %36
  %39 = load %struct.usnic_transport_spec*, %struct.usnic_transport_spec** %10, align 8
  %40 = icmp ne %struct.usnic_transport_spec* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %43 = load %struct.usnic_transport_spec*, %struct.usnic_transport_spec** %10, align 8
  %44 = call %struct.usnic_ib_qp_grp_flow* @create_and_add_flow(%struct.usnic_ib_qp_grp* %42, %struct.usnic_transport_spec* %43)
  store %struct.usnic_ib_qp_grp_flow* %44, %struct.usnic_ib_qp_grp_flow** %11, align 8
  %45 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %11, align 8
  %46 = call i32 @IS_ERR_OR_NULL(%struct.usnic_ib_qp_grp_flow* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %11, align 8
  %50 = icmp ne %struct.usnic_ib_qp_grp_flow* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %11, align 8
  %53 = call i32 @PTR_ERR(%struct.usnic_ib_qp_grp_flow* %52)
  br label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EFAULT, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i32 [ %53, %51 ], [ %56, %54 ]
  store i32 %58, i32* %7, align 4
  br label %97

59:                                               ; preds = %41
  br label %61

60:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %59
  br label %97

62:                                               ; preds = %36
  %63 = load %struct.usnic_transport_spec*, %struct.usnic_transport_spec** %10, align 8
  %64 = icmp ne %struct.usnic_transport_spec* %63, null
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %67 = load %struct.usnic_transport_spec*, %struct.usnic_transport_spec** %10, align 8
  %68 = call %struct.usnic_ib_qp_grp_flow* @create_and_add_flow(%struct.usnic_ib_qp_grp* %66, %struct.usnic_transport_spec* %67)
  store %struct.usnic_ib_qp_grp_flow* %68, %struct.usnic_ib_qp_grp_flow** %11, align 8
  %69 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %11, align 8
  %70 = call i32 @IS_ERR_OR_NULL(%struct.usnic_ib_qp_grp_flow* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %11, align 8
  %74 = icmp ne %struct.usnic_ib_qp_grp_flow* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %11, align 8
  %77 = call i32 @PTR_ERR(%struct.usnic_ib_qp_grp_flow* %76)
  br label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @EFAULT, align 4
  %80 = sub nsw i32 0, %79
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i32 [ %77, %75 ], [ %80, %78 ]
  store i32 %82, i32* %7, align 4
  br label %97

83:                                               ; preds = %65
  br label %87

84:                                               ; preds = %62
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %84, %83
  br label %97

88:                                               ; preds = %36
  %89 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %90 = call i32 @disable_qp_grp(%struct.usnic_ib_qp_grp* %89)
  store i32 %90, i32* %7, align 4
  br label %97

91:                                               ; preds = %36
  %92 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %93 = call i32 @disable_qp_grp(%struct.usnic_ib_qp_grp* %92)
  store i32 %93, i32* %7, align 4
  br label %97

94:                                               ; preds = %36
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %94, %91, %88, %87, %81, %61, %57
  br label %175

98:                                               ; preds = %3
  %99 = load i32, i32* %9, align 4
  switch i32 %99, label %103 [
    i32 131, label %100
  ]

100:                                              ; preds = %98
  %101 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %102 = call i32 @enable_qp_grp(%struct.usnic_ib_qp_grp* %101)
  store i32 %102, i32* %7, align 4
  br label %106

103:                                              ; preds = %98
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %175

107:                                              ; preds = %3
  %108 = load i32, i32* %9, align 4
  switch i32 %108, label %110 [
    i32 129, label %109
  ]

109:                                              ; preds = %107
  br label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %110, %109
  br label %175

114:                                              ; preds = %3
  %115 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %116 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %115, i32 0, i32 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 2
  store i32* %120, i32** %121, align 8
  %122 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %123 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %125, align 8
  %126 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %127 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %8, i32 0, i32 0
  store i32 %126, i32* %127, align 8
  %128 = load i32, i32* %9, align 4
  switch i32 %128, label %168 [
    i32 130, label %129
    i32 131, label %140
    i32 129, label %153
    i32 128, label %153
  ]

129:                                              ; preds = %114
  %130 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %131 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %132, align 8
  %134 = bitcast %struct.ib_event.0* %8 to %struct.ib_event*
  %135 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %136 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 %133(%struct.ib_event* %134, i32 %138)
  br label %171

140:                                              ; preds = %114
  %141 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %142 = call i32 @release_and_remove_all_flows(%struct.usnic_ib_qp_grp* %141)
  %143 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %144 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %145, align 8
  %147 = bitcast %struct.ib_event.0* %8 to %struct.ib_event*
  %148 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %149 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 %146(%struct.ib_event* %147, i32 %151)
  br label %171

153:                                              ; preds = %114, %114
  %154 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %155 = call i32 @disable_qp_grp(%struct.usnic_ib_qp_grp* %154)
  store i32 %155, i32* %7, align 4
  %156 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %157 = call i32 @release_and_remove_all_flows(%struct.usnic_ib_qp_grp* %156)
  %158 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %159 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %160, align 8
  %162 = bitcast %struct.ib_event.0* %8 to %struct.ib_event*
  %163 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %164 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 %161(%struct.ib_event* %162, i32 %166)
  br label %171

168:                                              ; preds = %114
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %168, %153, %140, %129
  br label %175

172:                                              ; preds = %3
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %172, %171, %113, %106, %97, %35
  %176 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %177 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %176, i32 0, i32 2
  %178 = call i32 @spin_unlock(i32* %177)
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %175
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %184 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %186 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @usnic_ib_qp_grp_state_to_string(i32 %188)
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @usnic_ib_qp_grp_state_to_string(i32 %190)
  %192 = call i32 @usnic_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %187, i32 %189, i32 %191)
  br label %202

193:                                              ; preds = %175
  %194 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %195 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @usnic_ib_qp_grp_state_to_string(i32 %197)
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @usnic_ib_qp_grp_state_to_string(i32 %199)
  %201 = call i32 @usnic_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %196, i32 %198, i32 %200)
  br label %202

202:                                              ; preds = %193, %181
  %203 = load i32, i32* %7, align 4
  ret i32 %203
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @release_and_remove_all_flows(%struct.usnic_ib_qp_grp*) #1

declare dso_local i32 @disable_qp_grp(%struct.usnic_ib_qp_grp*) #1

declare dso_local %struct.usnic_ib_qp_grp_flow* @create_and_add_flow(%struct.usnic_ib_qp_grp*, %struct.usnic_transport_spec*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.usnic_ib_qp_grp_flow*) #1

declare dso_local i32 @PTR_ERR(%struct.usnic_ib_qp_grp_flow*) #1

declare dso_local i32 @enable_qp_grp(%struct.usnic_ib_qp_grp*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usnic_info(i8*, i32, i32, i32) #1

declare dso_local i32 @usnic_ib_qp_grp_state_to_string(i32) #1

declare dso_local i32 @usnic_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
