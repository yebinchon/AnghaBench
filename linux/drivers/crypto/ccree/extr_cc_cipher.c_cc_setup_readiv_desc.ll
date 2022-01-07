; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_setup_readiv_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_setup_readiv_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.cipher_req_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cc_hw_desc = type { i32 }
%struct.cc_cipher_ctx = type { i32, i64, i32 }
%struct.device = type { i32 }

@CC_POLICY_PROTECTED_KEY = common dso_local global i64 0, align 8
@NS_BIT = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE1 = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE0 = common dso_local global i32 0, align 4
@CC_AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported cipher mode (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, %struct.cipher_req_ctx*, i32, %struct.cc_hw_desc*, i32*)* @cc_setup_readiv_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_setup_readiv_desc(%struct.crypto_tfm* %0, %struct.cipher_req_ctx* %1, i32 %2, %struct.cc_hw_desc* %3, i32* %4) #0 {
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca %struct.cipher_req_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cc_hw_desc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.cc_cipher_ctx*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %6, align 8
  store %struct.cipher_req_ctx* %1, %struct.cipher_req_ctx** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.cc_hw_desc* %3, %struct.cc_hw_desc** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %18 = call %struct.cc_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %17)
  store %struct.cc_cipher_ctx* %18, %struct.cc_cipher_ctx** %11, align 8
  %19 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %20 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.device* @drvdata_to_dev(i32 %21)
  store %struct.device* %22, %struct.device** %12, align 8
  %23 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %24 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  %26 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %27 = call i32 @cc_out_setup_mode(%struct.cc_cipher_ctx* %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %15, align 4
  %32 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %16, align 4
  %36 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %37 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CC_POLICY_PROTECTED_KEY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %5
  br label %176

42:                                               ; preds = %5
  %43 = load i32, i32* %13, align 4
  switch i32 %43, label %172 [
    i32 131, label %44
    i32 134, label %45
    i32 133, label %45
    i32 132, label %45
    i32 129, label %45
    i32 128, label %116
    i32 130, label %116
    i32 135, label %116
  ]

44:                                               ; preds = %42
  br label %176

45:                                               ; preds = %42, %42, %42, %42
  %46 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %46, i64 %49
  %51 = call i32 @hw_desc_init(%struct.cc_hw_desc* %50)
  %52 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %52, i64 %55
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @NS_BIT, align 4
  %60 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %56, i32 %57, i32 %58, i32 %59, i32 1)
  %61 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %61, i64 %64
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %65, i32 %66)
  %68 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %68, i64 %71
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @set_flow_mode(%struct.cc_hw_desc* %72, i32 %73)
  %75 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %75, i64 %78
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %79, i32 %80)
  %82 = load i32, i32* %13, align 4
  %83 = icmp eq i32 %82, 132
  br i1 %83, label %87, label %84

84:                                               ; preds = %45
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, 129
  br i1 %86, label %87, label %95

87:                                               ; preds = %84, %45
  %88 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %88, i64 %91
  %93 = load i32, i32* @SETUP_WRITE_STATE1, align 4
  %94 = call i32 @set_setup_mode(%struct.cc_hw_desc* %92, i32 %93)
  br label %103

95:                                               ; preds = %84
  %96 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %96, i64 %99
  %101 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %102 = call i32 @set_setup_mode(%struct.cc_hw_desc* %100, i32 %101)
  br label %103

103:                                              ; preds = %95, %87
  %104 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %105 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %108, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %107, i64 %110
  %112 = call i32 @set_queue_last_ind(i32 %106, %struct.cc_hw_desc* %111)
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %176

116:                                              ; preds = %42, %42, %42
  %117 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %118, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %117, i64 %120
  %122 = call i32 @hw_desc_init(%struct.cc_hw_desc* %121)
  %123 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %123, i64 %126
  %128 = load i32, i32* @SETUP_WRITE_STATE1, align 4
  %129 = call i32 @set_setup_mode(%struct.cc_hw_desc* %127, i32 %128)
  %130 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %130, i64 %133
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @set_cipher_mode(%struct.cc_hw_desc* %134, i32 %135)
  %137 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %138, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %137, i64 %140
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @set_cipher_config0(%struct.cc_hw_desc* %141, i32 %142)
  %144 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %144, i64 %147
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @set_flow_mode(%struct.cc_hw_desc* %148, i32 %149)
  %151 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %152, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %151, i64 %154
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* @CC_AES_BLOCK_SIZE, align 4
  %158 = load i32, i32* @NS_BIT, align 4
  %159 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %155, i32 %156, i32 %157, i32 %158, i32 1)
  %160 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %11, align 8
  %161 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %9, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %164, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %163, i64 %166
  %168 = call i32 @set_queue_last_ind(i32 %162, %struct.cc_hw_desc* %167)
  %169 = load i32*, i32** %10, align 8
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %169, align 4
  br label %176

172:                                              ; preds = %42
  %173 = load %struct.device*, %struct.device** %12, align 8
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @dev_err(%struct.device* %173, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %41, %172, %116, %103, %44
  ret void
}

declare dso_local %struct.cc_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @cc_out_setup_mode(%struct.cc_cipher_ctx*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_cipher_config0(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_queue_last_ind(i32, %struct.cc_hw_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
