; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_agent.c_ib_agent_port_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_agent.c_ib_agent_port_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_agent_port_private = type { i8**, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_QPT_SMI = common dso_local global i32 0, align 4
@agent_send_handler = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@ib_agent_port_list_lock = common dso_local global i32 0, align 4
@ib_agent_port_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_agent_port_open(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_agent_port_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ib_agent_port_private* @kzalloc(i32 16, i32 %9)
  store %struct.ib_agent_port_private* %10, %struct.ib_agent_port_private** %6, align 8
  %11 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %12 = icmp ne %struct.ib_agent_port_private* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  br label %94

16:                                               ; preds = %2
  %17 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @rdma_cap_ib_smi(%struct.ib_device* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IB_QPT_SMI, align 4
  %25 = call i8* @ib_register_mad_agent(%struct.ib_device* %22, i32 %23, i32 %24, i32* null, i32 0, i32* @agent_send_handler, i32* null, i32* null, i32 0)
  %26 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %27 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %25, i8** %29, align 8
  %30 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %31 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %21
  %38 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %39 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @PTR_ERR(i8* %42)
  store i32 %43, i32* %8, align 4
  br label %91

44:                                               ; preds = %21
  br label %45

45:                                               ; preds = %44, %16
  %46 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @IB_QPT_GSI, align 4
  %49 = call i8* @ib_register_mad_agent(%struct.ib_device* %46, i32 %47, i32 %48, i32* null, i32 0, i32* @agent_send_handler, i32* null, i32* null, i32 0)
  %50 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %51 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  store i8* %49, i8** %53, align 8
  %54 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %55 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %45
  %62 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %63 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %8, align 4
  br label %76

68:                                               ; preds = %45
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @spin_lock_irqsave(i32* @ib_agent_port_list_lock, i64 %69)
  %71 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %72 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %71, i32 0, i32 1
  %73 = call i32 @list_add_tail(i32* %72, i32* @ib_agent_port_list)
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* @ib_agent_port_list_lock, i64 %74)
  store i32 0, i32* %3, align 4
  br label %96

76:                                               ; preds = %61
  %77 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %78 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %85 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %84, i32 0, i32 0
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @ib_unregister_mad_agent(i8* %88)
  br label %90

90:                                               ; preds = %83, %76
  br label %91

91:                                               ; preds = %90, %37
  %92 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %93 = call i32 @kfree(%struct.ib_agent_port_private* %92)
  br label %94

94:                                               ; preds = %91, %13
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %68
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.ib_agent_port_private* @kzalloc(i32, i32) #1

declare dso_local i64 @rdma_cap_ib_smi(%struct.ib_device*, i32) #1

declare dso_local i8* @ib_register_mad_agent(%struct.ib_device*, i32, i32, i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_unregister_mad_agent(i8*) #1

declare dso_local i32 @kfree(%struct.ib_agent_port_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
