; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_rereg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_rereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_rereg_mr = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.ib_uverbs_rereg_mr_resp = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_mr = type { i32, i32, %struct.ib_pd*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ib_mr*, i32, i32, i64, i32, i32, %struct.ib_pd*, i32*)* }
%struct.ib_uobject = type { %struct.ib_mr* }

@IB_MR_REREG_SUPPORTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_MR_REREG_TRANS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@UVERBS_OBJECT_MR = common dso_local global i32 0, align 4
@IB_MR_REREG_ACCESS = common dso_local global i32 0, align 4
@IB_MR_REREG_PD = common dso_local global i32 0, align 4
@UVERBS_OBJECT_PD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_rereg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_rereg_mr(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_rereg_mr, align 8
  %5 = alloca %struct.ib_uverbs_rereg_mr_resp, align 4
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_uobject*, align 8
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  store %struct.ib_pd* null, %struct.ib_pd** %6, align 8
  %11 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %12 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %11, %struct.ib_uverbs_rereg_mr* %4, i32 40)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %2, align 4
  br label %190

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IB_MR_REREG_SUPPORTED, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %17
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %190

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 0, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PAGE_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PAGE_MASK, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %54, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %49, %45, %41, %37
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %190

64:                                               ; preds = %49, %31
  %65 = load i32, i32* @UVERBS_OBJECT_MR, align 4
  %66 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %69 = call %struct.ib_uobject* @uobj_get_write(i32 %65, i32 %67, %struct.uverbs_attr_bundle* %68)
  store %struct.ib_uobject* %69, %struct.ib_uobject** %10, align 8
  %70 = load %struct.ib_uobject*, %struct.ib_uobject** %10, align 8
  %71 = call i64 @IS_ERR(%struct.ib_uobject* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.ib_uobject*, %struct.ib_uobject** %10, align 8
  %75 = call i32 @PTR_ERR(%struct.ib_uobject* %74)
  store i32 %75, i32* %2, align 4
  br label %190

76:                                               ; preds = %64
  %77 = load %struct.ib_uobject*, %struct.ib_uobject** %10, align 8
  %78 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %77, i32 0, i32 0
  %79 = load %struct.ib_mr*, %struct.ib_mr** %78, align 8
  store %struct.ib_mr* %79, %struct.ib_mr** %7, align 8
  %80 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %81 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %9, align 4
  br label %186

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IB_MR_REREG_ACCESS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ib_check_mr_access(i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %186

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %87
  %102 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @IB_MR_REREG_PD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %101
  %108 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %109 = load i32, i32* @UVERBS_OBJECT_PD, align 4
  %110 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %113 = call %struct.ib_pd* @uobj_get_obj_read(%struct.ib_pd* %108, i32 %109, i32 %111, %struct.uverbs_attr_bundle* %112)
  store %struct.ib_pd* %113, %struct.ib_pd** %6, align 8
  %114 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %115 = icmp ne %struct.ib_pd* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %107
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %186

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %101
  %121 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %122 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %121, i32 0, i32 2
  %123 = load %struct.ib_pd*, %struct.ib_pd** %122, align 8
  store %struct.ib_pd* %123, %struct.ib_pd** %8, align 8
  %124 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %125 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %124, i32 0, i32 3
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32 (%struct.ib_mr*, i32, i32, i64, i32, i32, %struct.ib_pd*, i32*)*, i32 (%struct.ib_mr*, i32, i32, i64, i32, i32, %struct.ib_pd*, i32*)** %128, align 8
  %130 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %131 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %142 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %143 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %142, i32 0, i32 0
  %144 = call i32 %129(%struct.ib_mr* %130, i32 %132, i32 %134, i64 %136, i32 %138, i32 %140, %struct.ib_pd* %141, i32* %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %120
  br label %176

148:                                              ; preds = %120
  %149 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IB_MR_REREG_PD, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %148
  %155 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %156 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %155, i32 0, i32 0
  %157 = call i32 @atomic_inc(i32* %156)
  %158 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %159 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %160 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %159, i32 0, i32 2
  store %struct.ib_pd* %158, %struct.ib_pd** %160, align 8
  %161 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %162 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %161, i32 0, i32 0
  %163 = call i32 @atomic_dec(i32* %162)
  br label %164

164:                                              ; preds = %154, %148
  %165 = call i32 @memset(%struct.ib_uverbs_rereg_mr_resp* %5, i32 0, i32 8)
  %166 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %167 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.ib_uverbs_rereg_mr_resp, %struct.ib_uverbs_rereg_mr_resp* %5, i32 0, i32 1
  store i32 %168, i32* %169, align 4
  %170 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %171 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.ib_uverbs_rereg_mr_resp, %struct.ib_uverbs_rereg_mr_resp* %5, i32 0, i32 0
  store i32 %172, i32* %173, align 4
  %174 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %175 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %174, %struct.ib_uverbs_rereg_mr_resp* %5, i32 8)
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %164, %147
  %177 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, %struct.ib_uverbs_rereg_mr* %4, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @IB_MR_REREG_PD, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %184 = call i32 @uobj_put_obj_read(%struct.ib_pd* %183)
  br label %185

185:                                              ; preds = %182, %176
  br label %186

186:                                              ; preds = %185, %116, %99, %84
  %187 = load %struct.ib_uobject*, %struct.ib_uobject** %10, align 8
  %188 = call i32 @uobj_put_write(%struct.ib_uobject* %187)
  %189 = load i32, i32* %9, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %186, %73, %61, %28, %15
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_rereg_mr*, i32) #1

declare dso_local %struct.ib_uobject* @uobj_get_write(i32, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local i64 @IS_ERR(%struct.ib_uobject*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_uobject*) #1

declare dso_local i32 @ib_check_mr_access(i32) #1

declare dso_local %struct.ib_pd* @uobj_get_obj_read(%struct.ib_pd*, i32, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @memset(%struct.ib_uverbs_rereg_mr_resp*, i32, i32) #1

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_rereg_mr_resp*, i32) #1

declare dso_local i32 @uobj_put_obj_read(%struct.ib_pd*) #1

declare dso_local i32 @uobj_put_write(%struct.ib_uobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
