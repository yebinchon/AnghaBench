; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_pkc_desc.c_init_rsa_priv_f1_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_pkc_desc.c_init_rsa_priv_f1_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_priv_f1_pdb = type { i32, i32, i32, i32, i32 }

@SIZEOF_RSA_PRIV_F1_PDB = common dso_local global i32 0, align 4
@OP_TYPE_UNI_PROTOCOL = common dso_local global i32 0, align 4
@OP_PCLID_RSADEC_PRVKEY = common dso_local global i32 0, align 4
@RSA_PRIV_KEY_FRM_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_rsa_priv_f1_desc(i32* %0, %struct.rsa_priv_f1_pdb* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rsa_priv_f1_pdb*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.rsa_priv_f1_pdb* %1, %struct.rsa_priv_f1_pdb** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @SIZEOF_RSA_PRIV_F1_PDB, align 4
  %7 = call i32 @init_job_desc_pdb(i32* %5, i32 0, i32 %6)
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %4, align 8
  %10 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @append_cmd(i32* %8, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %4, align 8
  %15 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @append_ptr(i32* %13, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %4, align 8
  %20 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @append_ptr(i32* %18, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %4, align 8
  %25 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @append_ptr(i32* %23, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %4, align 8
  %30 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @append_ptr(i32* %28, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @OP_TYPE_UNI_PROTOCOL, align 4
  %35 = load i32, i32* @OP_PCLID_RSADEC_PRVKEY, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RSA_PRIV_KEY_FRM_1, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @append_operation(i32* %33, i32 %38)
  ret void
}

declare dso_local i32 @init_job_desc_pdb(i32*, i32, i32) #1

declare dso_local i32 @append_cmd(i32*, i32) #1

declare dso_local i32 @append_ptr(i32*, i32) #1

declare dso_local i32 @append_operation(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
