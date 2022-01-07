; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_create_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32, i32 }
%struct.ib_srq_init_attr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_pd = type { i32 }
%struct.ocrdma_dev = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.ocrdma_srq = type { i32, i32, i32, %struct.TYPE_7__, i64, %struct.ocrdma_pd*, i32 }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_create_srq(%struct.ib_srq* %0, %struct.ib_srq_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_srq*, align 8
  %6 = alloca %struct.ib_srq_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocrdma_pd*, align 8
  %10 = alloca %struct.ocrdma_dev*, align 8
  %11 = alloca %struct.ocrdma_srq*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %5, align 8
  store %struct.ib_srq_init_attr* %1, %struct.ib_srq_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %12 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %13 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ocrdma_pd* @get_ocrdma_pd(i32 %14)
  store %struct.ocrdma_pd* %15, %struct.ocrdma_pd** %9, align 8
  %16 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %17 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %18)
  store %struct.ocrdma_dev* %19, %struct.ocrdma_dev** %10, align 8
  %20 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %21 = call %struct.ocrdma_srq* @get_ocrdma_srq(%struct.ib_srq* %20)
  store %struct.ocrdma_srq* %21, %struct.ocrdma_srq** %11, align 8
  %22 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %23 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %27 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %181

34:                                               ; preds = %3
  %35 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %36 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %40 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %38, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %181

47:                                               ; preds = %34
  %48 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %49 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %48, i32 0, i32 6
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %52 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %53 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %52, i32 0, i32 5
  store %struct.ocrdma_pd* %51, %struct.ocrdma_pd** %53, align 8
  %54 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %55 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %59 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %62 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %60, %64
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %57, %66
  %68 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %69 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  %70 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %71 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %72 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %73 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %74 = call i32 @ocrdma_mbx_create_srq(%struct.ocrdma_dev* %70, %struct.ocrdma_srq* %71, %struct.ib_srq_init_attr* %72, %struct.ocrdma_pd* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %47
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %181

79:                                               ; preds = %47
  %80 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %81 = icmp ne %struct.ib_udata* %80, null
  br i1 %81, label %140, label %82

82:                                               ; preds = %79
  %83 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %84 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i32 @kcalloc(i32 %86, i32 4, i32 %87)
  %89 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %90 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %92 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %82
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %8, align 4
  br label %168

98:                                               ; preds = %82
  %99 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %100 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %102, 32
  %104 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %105 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = srem i32 %107, 32
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = add nsw i32 %103, %111
  %113 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %114 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %116 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call i32 @kmalloc_array(i32 %117, i32 4, i32 %118)
  %120 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %121 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %123 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %98
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %8, align 4
  br label %168

129:                                              ; preds = %98
  %130 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %131 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %134 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 4
  %138 = trunc i64 %137 to i32
  %139 = call i32 @memset(i32 %132, i32 255, i32 %138)
  br label %140

140:                                              ; preds = %129, %79
  %141 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %142 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %140
  %147 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %148 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %149 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %148, i32 0, i32 0
  %150 = call i32 @ocrdma_mbx_modify_srq(%struct.ocrdma_srq* %147, %struct.TYPE_8__* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %168

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %140
  %156 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %157 = icmp ne %struct.ib_udata* %156, null
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %160 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %161 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %162 = call i32 @ocrdma_copy_srq_uresp(%struct.ocrdma_dev* %159, %struct.ocrdma_srq* %160, %struct.ib_udata* %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %168

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166, %155
  store i32 0, i32* %4, align 4
  br label %181

168:                                              ; preds = %165, %153, %126, %95
  %169 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %170 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %171 = call i32 @ocrdma_mbx_destroy_srq(%struct.ocrdma_dev* %169, %struct.ocrdma_srq* %170)
  %172 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %173 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @kfree(i32 %174)
  %176 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %177 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @kfree(i32 %178)
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %168, %167, %77, %44, %31
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local %struct.ocrdma_pd* @get_ocrdma_pd(i32) #1

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local %struct.ocrdma_srq* @get_ocrdma_srq(%struct.ib_srq*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ocrdma_mbx_create_srq(%struct.ocrdma_dev*, %struct.ocrdma_srq*, %struct.ib_srq_init_attr*, %struct.ocrdma_pd*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ocrdma_mbx_modify_srq(%struct.ocrdma_srq*, %struct.TYPE_8__*) #1

declare dso_local i32 @ocrdma_copy_srq_uresp(%struct.ocrdma_dev*, %struct.ocrdma_srq*, %struct.ib_udata*) #1

declare dso_local i32 @ocrdma_mbx_destroy_srq(%struct.ocrdma_dev*, %struct.ocrdma_srq*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
