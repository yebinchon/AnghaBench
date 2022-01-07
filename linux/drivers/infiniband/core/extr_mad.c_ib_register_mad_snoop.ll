; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_register_mad_snoop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_register_mad_snoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32, i32, i8*, i64, i64, %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_mad_port_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_mad_snoop_private = type { i32, i32, %struct.ib_mad_agent, i32, i32, %struct.TYPE_2__* }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mad_agent* @ib_register_mad_snoop(%struct.ib_device* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5, i8* %6) #0 {
  %8 = alloca %struct.ib_mad_agent*, align 8
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ib_mad_port_private*, align 8
  %17 = alloca %struct.ib_mad_agent*, align 8
  %18 = alloca %struct.ib_mad_snoop_private*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call i64 @is_snooping_sends(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i64, i64* %13, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24, %7
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @is_snooping_recvs(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i64, i64* %14, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.ib_mad_agent* @ERR_PTR(i32 %36)
  store %struct.ib_mad_agent* %37, %struct.ib_mad_agent** %17, align 8
  br label %154

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @get_spl_qp_index(i32 %39)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.ib_mad_agent* @ERR_PTR(i32 %45)
  store %struct.ib_mad_agent* %46, %struct.ib_mad_agent** %17, align 8
  br label %154

47:                                               ; preds = %38
  %48 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call %struct.ib_mad_port_private* @ib_get_mad_port(%struct.ib_device* %48, i32 %49)
  store %struct.ib_mad_port_private* %50, %struct.ib_mad_port_private** %16, align 8
  %51 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %16, align 8
  %52 = icmp ne %struct.ib_mad_port_private* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.ib_mad_agent* @ERR_PTR(i32 %55)
  store %struct.ib_mad_agent* %56, %struct.ib_mad_agent** %17, align 8
  br label %154

57:                                               ; preds = %47
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.ib_mad_snoop_private* @kzalloc(i32 64, i32 %58)
  store %struct.ib_mad_snoop_private* %59, %struct.ib_mad_snoop_private** %18, align 8
  %60 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %61 = icmp ne %struct.ib_mad_snoop_private* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.ib_mad_agent* @ERR_PTR(i32 %64)
  store %struct.ib_mad_agent* %65, %struct.ib_mad_agent** %17, align 8
  br label %154

66:                                               ; preds = %57
  %67 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %16, align 8
  %68 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %74 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %73, i32 0, i32 5
  store %struct.TYPE_2__* %72, %struct.TYPE_2__** %74, align 8
  %75 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %76 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %77 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %77, i32 0, i32 5
  store %struct.ib_device* %75, %struct.ib_device** %78, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %81 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %81, i32 0, i32 4
  store i64 %79, i64* %82, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %85 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %85, i32 0, i32 3
  store i64 %83, i64* %86, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %89 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %89, i32 0, i32 2
  store i8* %87, i8** %90, align 8
  %91 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %16, align 8
  %92 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %100 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %104 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %108 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %110 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %109, i32 0, i32 4
  %111 = call i32 @init_completion(i32* %110)
  %112 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %113 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %112, i32 0, i32 2
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @ib_mad_agent_security_setup(%struct.ib_mad_agent* %113, i32 %114)
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %20, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %66
  %119 = load i32, i32* %20, align 4
  %120 = call %struct.ib_mad_agent* @ERR_PTR(i32 %119)
  store %struct.ib_mad_agent* %120, %struct.ib_mad_agent** %17, align 8
  br label %151

121:                                              ; preds = %66
  %122 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %16, align 8
  %123 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %129 = call i32 @register_snoop_agent(%struct.TYPE_2__* %127, %struct.ib_mad_snoop_private* %128)
  %130 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %131 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %133 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %121
  %137 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %138 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call %struct.ib_mad_agent* @ERR_PTR(i32 %139)
  store %struct.ib_mad_agent* %140, %struct.ib_mad_agent** %17, align 8
  br label %147

141:                                              ; preds = %121
  %142 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %143 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %142, i32 0, i32 3
  %144 = call i32 @atomic_set(i32* %143, i32 1)
  %145 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %146 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %145, i32 0, i32 2
  store %struct.ib_mad_agent* %146, %struct.ib_mad_agent** %8, align 8
  br label %156

147:                                              ; preds = %136
  %148 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %149 = getelementptr inbounds %struct.ib_mad_snoop_private, %struct.ib_mad_snoop_private* %148, i32 0, i32 2
  %150 = call i32 @ib_mad_agent_security_cleanup(%struct.ib_mad_agent* %149)
  br label %151

151:                                              ; preds = %147, %118
  %152 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %18, align 8
  %153 = call i32 @kfree(%struct.ib_mad_snoop_private* %152)
  br label %154

154:                                              ; preds = %151, %62, %53, %43, %34
  %155 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %17, align 8
  store %struct.ib_mad_agent* %155, %struct.ib_mad_agent** %8, align 8
  br label %156

156:                                              ; preds = %154, %141
  %157 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %8, align 8
  ret %struct.ib_mad_agent* %157
}

declare dso_local i64 @is_snooping_sends(i32) #1

declare dso_local i64 @is_snooping_recvs(i32) #1

declare dso_local %struct.ib_mad_agent* @ERR_PTR(i32) #1

declare dso_local i32 @get_spl_qp_index(i32) #1

declare dso_local %struct.ib_mad_port_private* @ib_get_mad_port(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_mad_snoop_private* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ib_mad_agent_security_setup(%struct.ib_mad_agent*, i32) #1

declare dso_local i32 @register_snoop_agent(%struct.TYPE_2__*, %struct.ib_mad_snoop_private*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ib_mad_agent_security_cleanup(%struct.ib_mad_agent*) #1

declare dso_local i32 @kfree(%struct.ib_mad_snoop_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
